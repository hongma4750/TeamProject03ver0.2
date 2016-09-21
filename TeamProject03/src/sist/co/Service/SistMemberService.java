package sist.co.Service;

import java.util.HashMap;

import sist.co.Model.SistMemberVO;

public interface SistMemberService {
	 
	//로그인
	SistMemberVO login(SistMemberVO member)throws Exception;
	
	//회원가입
	boolean insertMember(SistMemberVO membervo) throws Exception;
	
	int getID(SistMemberVO vo);
	
	void createTable(HashMap map);
	
	
}
