package kr.co.dong.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDAO dao;
	
	@Override
	//로그인 처리를 위한 메소드
	public jointempDTO login(jointempDTO jointempDTO) {
		// TODO Auto-generated method stub
		return dao.login(jointempDTO);
	}

	@Override
	public List<BoardDTO> list() throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}
	

	@Override
	public List<jointempDTO> manage() throws Exception {
		// TODO Auto-generated method stub
		return dao.manage();
	}

	

	@Override
	public BoardDTO detail(int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.detail(bno);
	}

	@Override
	public int register(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.register(boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(boardDTO);
	}

	@Override
	public int delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(bno);
	}

	@Override
	public List<BoardReply> getDetail(int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.getDetail(bno);
	}

	@Override
	public int reply(BoardReply boardReply) throws Exception {
		// TODO Auto-generated method stub
		return dao.reply(boardReply);
	}

	@Override
	public BoardReply detailReply(int reno) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailReply(reno);
	}

	@Override
	public int replyUpdate(BoardReply boardReply) throws Exception {
		// TODO Auto-generated method stub
		return dao.replyUpdate(boardReply);
	}

	@Override
	public int replyDelete(BoardReply boardReply) throws Exception {
		// TODO Auto-generated method stub
		return dao.replyDelete(boardReply);
	}

	@Override
	public List<CodeDTO> codeList(CodeDTO CodeDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.codeList(CodeDTO);
	}

	@Override
	public int jointemp(jointempDTO jointempDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.jointemp(jointempDTO);
	}

	@Override
	public int getlistcnt() throws Exception {
		// TODO Auto-generated method stub
		return dao.getlistcnt();
	}

	@Override
	public List<BoardDTO> list(paging paging) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(paging);
	}

	@Override
	public List<jointempDTO> manage(paging paging) throws Exception {
		// TODO Auto-generated method stub
		return dao.manage(paging);
	}

	@Override
	public int getmembercnt() throws Exception {
		// TODO Auto-generated method stub
		return dao.getmembercnt();
	}



}
