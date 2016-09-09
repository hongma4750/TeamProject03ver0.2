package sist.co.Service.Imple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.co.Service.SistFriendDAO;
import sist.co.Service.SistFriendService;

@Service
public class SistFriendImpl implements SistFriendService {
	
	@Autowired
	SistFriendDAO sistFriendDAO;

}
