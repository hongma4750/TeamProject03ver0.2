package sist.co.Service;

import java.util.List;

import sist.co.Model.SistDblFollowingVO;
import sist.co.Model.SistFgroupVO;
import sist.co.Model.SistFriendVO;
import sist.co.Model.SistFsettingVO;
import sist.co.Model.SistMemberVO;

public interface SistFriendService {
	
	//이웃 한명
	public SistFriendVO getFriend(String myid) throws Exception;

	//이웃들 정보가져오기
	public List<SistFriendVO> getFriends(String myid) throws Exception;

	//해당 이웃의 이웃 정보 가져오기
	public List<SistFriendVO> gettheFofFriends(SistFriendVO fnd) throws Exception;
	//모든 이웃의 이웃 정보 가져오기(myid로추출)
	public List<SistFriendVO> getAllFofFriends(String myid) throws Exception;

	//그룹조회
	public List<SistFgroupVO> getGroups(String myid) throws Exception;

	//그룹추가
	public boolean addGroup(SistFgroupVO group) throws Exception;

	//이웃추가
	public boolean addFriend(SistFriendVO friend) throws Exception;

	//팔로잉
	public boolean addDblFollowing(SistDblFollowingVO dblfol) throws Exception;
}
