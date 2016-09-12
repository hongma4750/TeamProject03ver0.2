package sist.co.Service.Imple;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sist.co.Model.SistMemberVO;
import sist.co.Service.SistMemberDAO;
import sist.co.Service.SistMemberService;

 


@Service
public class SistMemberImpl implements SistMemberService{

	@Autowired 
	SistMemberDAO sistMemberDAO;

	@Override
	@Transactional(readOnly=true)		//읽기전용 세팅
	public SistMemberVO login(SistMemberVO member) throws Exception {
		return sistMemberDAO.login(member);
	}

	@Override
	public boolean insertMember(SistMemberVO membervo) throws Exception {
		
		return sistMemberDAO.insertMember(membervo);
	}
	@Override
	public void createTable(HashMap map) {
		sistMemberDAO.createTable(map);
		
	}

	@Override
	public int getId(SistMemberVO vo) throws Exception{
		// TODO Auto-generated method stub
		return sistMemberDAO.getId(vo);
	}


	
	
	
}
