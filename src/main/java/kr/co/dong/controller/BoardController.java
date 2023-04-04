package kr.co.dong.controller;


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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.dong.board.BoardDTO;
import kr.co.dong.board.BoardService;
import kr.co.dong.board.PointDTO;
import kr.co.dong.board.jointempDTO;
import kr.co.dong.board.paging;


@Controller

public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	// 로그인 ********************************************************************************
	
	// 로그인 폼으로 가는 매핑 board/login -> login(.jsp)
	@RequestMapping(value="board/login", method = RequestMethod.GET)
	public String login() {		
		return "login";
	}
	
	
	// 아이디 찾기
	@RequestMapping(value="board/findId", method = RequestMethod.GET)
	public String findId() throws Exception {
		return "findId";
	}
	
	@RequestMapping(value="board/findId", method = RequestMethod.POST)
	public String findId(@RequestParam Map<String,Object> map, HttpServletRequest request, 
									   HttpServletResponse response, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		
			request.setCharacterEncoding("utf-8");
			Map ID = service.findId(map);
			System.out.println(ID.values());
			if (ID == null) {		
				rttr.addFlashAttribute("msg","입력값에 맞는 회원 정보가 없습니다.");
				return "redirect:findId";
			} else {
				model.addAttribute("changID", ID.values());
				return "redirect:changID";
				
			}
	}
	
	// 아이디 찾기
	@RequestMapping(value="board/changID", method = RequestMethod.GET)
	public String changID() throws Exception {
		return "changID";
	}
	
	

	// 패스워드 찾기 폼
	@RequestMapping(value="board/findPw", method = RequestMethod.GET)
	public String findPw() {		
		return "findPw";
	}
	
	//로그아웃
	// 로그인 폼으로 가는 매핑 board/login -> login(.jsp)
	@GetMapping(value="board/logOut")
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	//	로그인 처리하기 (DAO)  : 성공하면 redirect:/ (또는 home.jsp)
	//  세션부여함.
	@RequestMapping(value="board/login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String,Object> map, HttpServletRequest request, 
									  HttpServletResponse response, HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		System.out.println(map);
		// 서비스 호출
		Map user = service.login(map);
		
		if(user == null) {  // 로그인 실패
			return "redirect:login";
		} else {   // 로그인 성공
			// 세션 부여
			session.setAttribute("user", user);
			return "redirect:/";
		}		
	}

	// 회원 ****************************************************************************************************************************
	
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
	
	//회원 상세정보
	@RequestMapping(value="board/management_detail", method = {RequestMethod.GET,RequestMethod.POST})
	public String manageOne(@RequestParam("m_id") String m_id, Model model) throws Exception {
		System.out.println("!!!!상세!!!!!!!!!!!!1"+m_id);
		logger.info("!!!!!!!상세!!!!!2"+m_id);
		jointempDTO jointemp = service.manageOne(m_id);
		model.addAttribute("management_detail", jointemp);
	
		return "management_detail";
	}
	
	//회원 정보 수정 폼
	/*	
	@RequestMapping(value="board/userupdate", method = RequestMethod.GET)
	public String userupdate(@RequestParam("m_id") String m_id, Model model) throws Exception {
		System.out.println("!!!!!!!!!!수정1!!!!!"+m_id);
		jointempDTO jointemp = service.manageOne(m_id);
		model.addAttribute("userupdate", jointemp);
		return "management_detail";
	}
	*/
	
	//회원 정보 수정 저장
	@RequestMapping(value="board/userupdate", method = {RequestMethod.GET,RequestMethod.POST})
	public String userupdate(jointempDTO jointempDTO, RedirectAttributes rttr,HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		System.out.println("!!!!!!!!!!수정2!!!!!"+jointempDTO);
		int r = service.userupdate(jointempDTO);
		
		
		//값 setting 2개
		if(r>0) {		//1
			System.out.println("수정완료");
			return "redirect:Management";
		} else {
			System.out.println("수정실패");
			return "redirect:userupdate?m_id="+jointempDTO.getM_id();
		
		}
			
	}	
	
	//회원 정보 삭제
	@RequestMapping(value="board/userdelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String userdelete(@RequestParam("m_id") int m_id,RedirectAttributes rttr) throws Exception {
		System.out.println("!!!!!!!!!!삭제!!!!!"+m_id);
		int r = service.userdelete(m_id);
		if(r>0) {
			rttr.addFlashAttribute("msg","회원정보 삭제에 성공했습니다");
			return "redirect:Management";
		}
		
		return "redirect:management_detail?m_id"+m_id;
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

	
	
	// 포인트 샵 ******************************************************************************************************************
	
	// 포인트 샵 폼
	@RequestMapping(value="board/point", method = RequestMethod.GET)
	public String point() {		
		return "point";
	}
	
	// 포인트 저장
	@RequestMapping(value="board/product1", method = RequestMethod.POST)
	public String product1(PointDTO PointDTO, HttpServletRequest request)throws Exception {
		request.setCharacterEncoding("utf-8");
		int r = service.point(PointDTO);
     
		return "redirect:point_list";
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
     
  
   
   // 마이페이지 ******************************************************************************************************************
   
   // 마이페이지-개인
   @RequestMapping(value="board/mypage", method = RequestMethod.GET)
   public String mypage() {
	   
      return "mypage";
   }	
   
   //마이페이지 출석 포인트
  	@RequestMapping(value="board/mypage", method = RequestMethod.POST)
  	public String mypage(jointempDTO jointempDTO, HttpSession session, HttpServletRequest request)throws Exception {
  		request.setCharacterEncoding("utf-8");
  		
  		jointempDTO = service.mySelect(jointempDTO);
  		//service.mm_number(jointempDTO);
  		
  		System.out.println("############"+jointempDTO.getM_pt());
  		
  		
  		if(jointempDTO.getMm_number()==2) {
  			System.out.println("@@@@@@@@@@"+jointempDTO.getM_pt());
  			int r = service.ptUpdate(jointempDTO);
  	  		if(r >= 1) {
  	  			jointempDTO = service.mySelect(jointempDTO);
  	  		}
  			return "redirect:mypage";
  		} else if(jointempDTO.getMm_number()==3) {
  			
  			return "redirect:list_my?m_id=" + jointempDTO.getM_id(); 
  		} else {
  		 
  		return "redirect:mypage";
  		}
  	}
  	
}






