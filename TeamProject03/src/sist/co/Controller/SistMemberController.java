package sist.co.Controller;

import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.co.Model.SistMemberVO;
import sist.co.Service.SistMemberService;


@Controller
public class SistMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(SistMemberController.class);
	 
	@Autowired
	SistMemberService sistMemberService;

	@RequestMapping(value="index.do",method=RequestMethod.GET)
	public String index(SistMemberVO memdto, Model model){
		logger.info("환영합니다. index.do 실행중");
		
		return "index.tiles";
	}
	
	@RequestMapping(value="login.do",method=RequestMethod.GET)
	public String login(Model model){
		logger.info("현재 login.do 실행중");
		return "login.tiles";
	}
	
	@RequestMapping(value="loginAF.do",method=RequestMethod.POST)
	public String loginAF(HttpServletRequest request, SistMemberVO vo, Model model) throws Exception{
		logger.info("loginAF.do 실행중");
	
		
		SistMemberVO memvo = sistMemberService.login(vo);
		
/*		if(memvo == null){
			//로그인안해쓰
			return "index.tiles";	
		}else{
			request.getSession().setAttribute("login", memvo);
			//로그인해쓰
			return "redirect:/index.do";
		}

		return "index.tiles";*/
		
		if(memvo != null && !memvo.getM_id().equals("")){
			request.getSession().setAttribute("login",memvo);
			return "redirect:/index.do";	
		}else{
			System.out.println("아이디 읍써");
			return "index.tiles";
		}
	}
	
	@RequestMapping(value="regi.do",method=RequestMethod.GET)
	public String regi(Model model){
		logger.info("regi.do �떎�뻾以�");
		return "regi.tiles";
	}
	
	@RequestMapping(value="regiAF.do",method=RequestMethod.POST)
	public String regiAF(HttpServletRequest request,SistMemberVO vo, Model model) throws Exception{
		logger.info("regiAF.do 실행중");

		String b_year = request.getParameter("b_year");
		String b_month = request.getParameter("b_month");
		String b_day = two(request.getParameter("b_day"));
		
		String m_birthday = b_year+b_month+b_day;
		
		vo.setM_birthday(m_birthday);
		
		vo.toString();
		
		
		sistMemberService.insertMember(vo);

		return "index.tiles";
	}
	
	
	@RequestMapping(value="logout.do",method=RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model){
		logger.info("logout.do 실행중 ");
		
		request.getSession().invalidate();
		
		return "index.tiles";
	}
	
	@RequestMapping(value="idfind.do",method=RequestMethod.GET)
	public String idfind(HttpServletRequest request, Model model){
		logger.info("idfind.do 실행중");
		
		String menu = request.getParameter("menu");
		model.addAttribute("menu",menu);
		return "idfind.tiles";
	}
	
	@RequestMapping(value="find_id_ok.do", method=RequestMethod.GET)
	public String find_id_ok(HttpServletRequest request, Model model){
		logger.info("find_id_ok.do 실행중");
		
		String menu = request.getParameter("menu");
		model.addAttribute("menu",menu);
		
		return "find_id_ok.tiles";
	}
	
	@RequestMapping(value="pwfind.do", method=RequestMethod.GET)
	public String pwfind(HttpServletRequest request, Model model){
		logger.info("pwfind.do 실행중");
		
		String menu = request.getParameter("menu");
		model.addAttribute("menu",menu);
		return "pwfind.tiles";
	}
	
	@RequestMapping(value="find_pw_se.do", method=RequestMethod.GET)
	public String find_pw_se(HttpServletRequest request, Model model){
		logger.info("find_pw_se.do 실행중");
		
		String menu = request.getParameter("menu");
		model.addAttribute("menu",menu);
		return "find_pw_se.tiles";
	}
	
	@RequestMapping(value="find_pw_ok.do", method=RequestMethod.GET)
	public String find_pw_ok(HttpServletRequest request, Model model){
		logger.info("find_pw_ok.do 실행중");
		
		String menu = request.getParameter("menu");
		model.addAttribute("menu",menu);
		return "find_pw_ok.tiles";
	}
	

	@RequestMapping(value="myPage.do", method=RequestMethod.GET)
	public String myPage(Model model){
		logger.info("myPage.do 실행중");
		
		return "myPage.tiles";
	}
	
	@RequestMapping(value="myProfile.do", method=RequestMethod.GET)
	public String myProfile(Model model){
		logger.info("myProfile.do 실행중");
		
		return "myProfile.tiles";
	}
	
	@RequestMapping(value="myInfo.do", method=RequestMethod.GET)
	public String myInfo(Model model){
		logger.info("myInfo.do 실행중");
		
		return "myInfo.tiles";
	}
	
	@RequestMapping(value="userInfo.do",method=RequestMethod.GET)
	public String userInfo(Model model){
		logger.info("userInfo.do 실행중");
		
		return "userInfo.tiles";
	}
	
	@RequestMapping(value="blogInfo.do",method=RequestMethod.GET)
	public String blogInfo(Model model){
		logger.info("blogInfo.do 실행중");
		
		return "blogInfo.tiles";
	}
	
	
	public String two(String msg){
		return msg.length()>2? msg:"0"+msg;
	}
	
	
	
}
