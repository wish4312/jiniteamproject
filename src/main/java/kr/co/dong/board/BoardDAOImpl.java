package kr.co.dong.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository //세션호출하기 위함
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlsession;
	
	private static final String namespace = "kr.co.dong.boardMapper";
	
	@Override
	public jointempDTO login(jointempDTO jointempDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".login", jointempDTO);
	}

	@Override
	public List<BoardDTO> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".list");
	}
	
	@Override
	public List<jointempDTO> manage() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".manage");
	}
	
	@Override
	public List<BoardDTO> list(paging paging) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".list", paging);
	}
	
	@Override
	public List<jointempDTO> manage(paging paging) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".manage", paging);
	}

	@Override
	public BoardDTO detail(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".detail", bno);
	}

	@Override
	public int updateReadCnt(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateReadCnt", bno);
	}

	@Override
	public int register(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".register", boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".update", boardDTO);
	}

	@Override
	public int delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".delete", bno);
	}

	@Override
	public List<BoardReply> getDetail(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".detail1", bno);
	}

	@Override
	public int reply(BoardReply boardReply) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".reply", boardReply);
	}

	@Override
	public BoardReply detailReply(int reno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".detailReply", reno);
	}

	@Override
	public int replyUpdate(BoardReply boardReply) throws Exception {  
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".replyUpdate", boardReply);
	}

	@Override
	public int replyDelete(BoardReply boardReply) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".replyDelete", boardReply);
	}

	@Override
	public List<CodeDTO> codeList(CodeDTO CodeDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".codeList", CodeDTO);
	}

	@Override
	public int jointemp(jointempDTO jointempDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".jointemp", jointempDTO);
	}

	@Override
	public int getlistcnt() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".getlistcnt");
	}

	@Override
	public int getmembercnt() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".getmembercnt");
	}

	

	

	

}
