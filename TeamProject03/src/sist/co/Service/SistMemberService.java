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
	
	SistMemberVO idUsePhone(SistMemberVO vo)throws Exception;
	
	SistMemberVO idUseEmail(SistMemberVO vo) throws Exception;
	
	SistMemberVO pwUsePhone(SistMemberVO vo) throws Exception;
	
	SistMemberVO pwUseEmail(SistMemberVO vo) throws Exception;
	
	void changeName(SistMemberVO vo) throws Exception;
	
	SistMemberVO selectId(SistMemberVO vo) throws Exception;
	
	void changeEmail(SistMemberVO vo) throws Exception;
	
	void changePhone(SistMemberVO vo) throws Exception;
	
	void myProfile(SistMemberVO vo) throws Exception;
}
