package sist.co.Service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SistFriendDAO {
	@Autowired
	SqlSession sqlsession;
	
	private String ns = "SistFriend.";

}
