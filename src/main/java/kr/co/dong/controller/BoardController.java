package kr.co.dong.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.cj.Session;

import kr.co.dong.HomeController;
import kr.co.dong.board.BoardDTO;
import kr.co.dong.board.BoardReply;
import kr.co.dong.board.BoardService;
import kr.co.dong.board.CodeDTO;
import kr.co.dong.board.jointempDTO;
import kr.co.dong.board.paging;


@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	
	// 로그인 폼으로 가는 매핑 board/login -> login(.jsp)
	@RequestMapping(value="board/login", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	// 로그인 폼으로 가는 매핑 board/login -> login(.jsp)
	@GetMapping(value="board/logOut")
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}


	//로그인 처리하기 (DAO)  : 성공하면 redirect:/ (또는 home.jsp) 세션부여함.
	@RequestMapping(value="board/userlogin", method = RequestMethod.POST)
	public String login(@RequestParam jointempDTO jointempDTO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		
		HttpSession session = request.getSession();
		jointempDTO user = service.login(jointempDTO);
		
		if(user == null) {  // 로그인 실패
			System.out.println("로그인실패");
			return "redirect:login";
		}else {   // 로그인 성공
			// 세션 부여
			session.setAttribute("user", user);
			System.out.println("로그인 성공");
			return "redirect:/";
		}		
	}


	// 회원관리 
	@RequestMapping(value="board/Management", method = RequestMethod.GET)
	public ModelAndView Management(@RequestParam(value="page", required=false, defaultValue="1")int page1,
							       @RequestParam(value="range", required=false, defaultValue="1")int range1) throws Exception {
		ModelAndView mav1 = new ModelAndView();
		
		paging paging = new paging();
		
		int getmemberCnt = service.getmembercnt();
		paging.pageInfo(page1, range1, getmemberCnt);
		
		mav1.addObject("pagination", paging);
		List<jointempDTO> manage = service.manage(paging);
		mav1.addObject("Management", manage);
		mav1.setViewName("Management");
		
		return mav1;	
	}

	

	
	// 회원 가입폼
	@RequestMapping(value="board/join", method = RequestMethod.GET)
	public String join() {
		
		return "join";
	}
	// 회원 가입 저장
	@RequestMapping(value="board/join", method = RequestMethod.POST)
	public String join(jointempDTO jointempDTO, HttpServletRequest request)throws Exception {
		request.setCharacterEncoding("utf-8");
		int r = service.jointemp(jointempDTO);
     
		return "redirect:/";
	}


	// 포인트 샵 폼
	@RequestMapping(value="board/point", method = RequestMethod.GET)
	public String point() {
		
		return "point";
	}
	
	// 포인트 샵 상품1
   @RequestMapping(value="board/product1", method = RequestMethod.GET)
   public String product1() {
      
      return "product1";
   }
   
   // 포인트 샵 상품2
   @RequestMapping(value="board/product2", method = RequestMethod.GET)
   public String product2() {
      
      return "product2";
   }
   // 포인트 샵 상품3
   @RequestMapping(value="board/product3", method = RequestMethod.GET)
   public String product3() {
      
      return "product3";
   }

	
}






