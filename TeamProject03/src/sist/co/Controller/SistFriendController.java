package sist.co.Controller;

import org.apache.catalina.connector.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sist.co.Service.SistFriendService;

@Controller
public class SistFriendController {
	
	private static final Logger logger = LoggerFactory.getLogger(SistMemberController.class);
	
	@Autowired
	SistFriendService sistFriendService;
	
	//이웃 소식_전체
	@RequestMapping(value="fnewslist.do",method={RequestMethod.GET,RequestMethod.POST})
	public String fnewslist(Model model){
		logger.info("환영합니다. fnewslist.do 실행중");
		return "index.tiles";
	}
	//이웃 소식_새글보기	
	@RequestMapping(value="newlist.do",method={RequestMethod.GET,RequestMethod.POST})
	public String newlist(Model model){
		logger.info("환영합니다. newlist.do 실행중");
		return "newlist.tiles";
	}
	//이웃 소식_이웃의이웃	
	@RequestMapping(value="foffriendlist.do",method={RequestMethod.GET,RequestMethod.POST})
	public String foffriendlist(Model model){
		logger.info("환영합니다. foffriendlist.do 실행중");
		return "foffriendlist.tiles";
	}
	//이웃 소식_이웃목록	
		@RequestMapping(value="friends.do",method={RequestMethod.GET,RequestMethod.POST})
		public String friends(Model model){
			logger.info("환영합니다. friends.do 실행중");
			return "friends.tiles";
		}
	
	//이웃추가 팝업_이웃,서로이웃 선택	
	@RequestMapping(value="addfriend.do",method={RequestMethod.GET,RequestMethod.POST})
	public String addfriend(Model model){
		logger.info("환영합니다. addfriend.do 실행중");
		return "addfriend.tiles";
	}
	//이웃추가 팝업_이웃그룹 선택
	@RequestMapping(value="addfollowGroup.do",method={RequestMethod.GET,RequestMethod.POST})
	public String addfollowGroup(Model model){
		logger.info("환영합니다. addfollowGroup.do 실행중");
		return "addfollowGroup.tiles";
	}
	
	//이웃관리홈
	@RequestMapping(value="settingmain.do",method={RequestMethod.GET,RequestMethod.POST})
	public String settingmain(Model model){
		logger.info("환영합니다. settingmain.do 실행중");
		return "settingmain.tiles";
	}
	
	@RequestMapping(value="settinghome.do",method={RequestMethod.GET,RequestMethod.POST})
	public String settinghome(Model model){
		logger.info("환영합니다. settinghome.do 실행중");
		return "settinghome.tiles";
	}
	//관리메뉴_이웃,그룹 관리_세부 탭
	@RequestMapping(value="setfriendGroup.do",method={RequestMethod.GET,RequestMethod.POST})
	public String setfriendGroup(Model model){
		logger.info("환영합니다. setfriendGroup.do 실행중");
		return "setfriendGroup.tiles";
	}
	
	//관리메뉴_나를 추가한 이웃
	@RequestMapping(value="setfollower.do",method={RequestMethod.GET,RequestMethod.POST})
	public String setfollower(Model model){
		logger.info("환영합니다. setfollower.do 실행중");
		return "setfollower.tiles";
	}
	//관리메뉴_서로이웃맺기	
	@RequestMapping(value="setdblfollow.do",method={RequestMethod.GET,RequestMethod.POST})
	public String setdblfollow(Model model){
		logger.info("환영합니다. setdblfollow.do 실행중");
		return "setdblfollow.tiles";
	}
	
	//주제별글보기_전체
	@RequestMapping(value="topiclist.do",method={RequestMethod.GET,RequestMethod.POST})
	public String topiclist(Model model){
		logger.info("환영합니다. topiclist.do 실행중");
		return "topiclist.tiles";
	}
	
	//로그인박스_내블로그가기
	@RequestMapping(value="blog2.do",method={RequestMethod.GET,RequestMethod.POST})
	public String blog(Model model){
		logger.info("환영합니다. blog2.do 실행중");
		return "blog2.tiles";
	}

}
