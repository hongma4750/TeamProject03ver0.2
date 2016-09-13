package sist.co.Service;

import java.util.HashMap;

import sist.co.Model.SistMemberVO;

public interface SistMemberService {
	 
	//로그인
	SistMemberVO login(SistMemberVO member)throws Exception;
	
	//회원가입
	boolean insertMember(SistMemberVO membervo) throws Exception;
	
	int getId(SistMemberVO vo) throws Exception;
	
	void createTable(HashMap map);
	
	void updateActionMember(String m_id);
}
