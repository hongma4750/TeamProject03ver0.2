package sist.co.Controller;


import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;

import javax.crypto.Cipher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.co.Model.SendEmail;
import sist.co.Model.SistMemberVO;
import sist.co.Model.YesMember;
import sist.co.Service.SistMemberService;


@Controller
public class SistMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(SistMemberController.class);
	 
	@Autowired
	SistMemberService sistMemberService;

	@RequestMapping(value="index.do",method=RequestMethod.GET)
	public String index(Model model){
		logger.info("환영합니다. index.do 실행중");
		return "index.tiles";
	}
	
	@RequestMapping(value="login.do",method=RequestMethod.GET)
	public String login(HttpServletRequest request, Model model) throws Exception{
		logger.info("현재 login.do 실행중");
		
		KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
		generator.initialize(512);

		KeyPair keyPair = generator.genKeyPair();
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");

		PublicKey publicKey = keyPair.getPublic();
		PrivateKey privateKey = keyPair.getPrivate();

		HttpSession session = request.getSession();
		// 세션에 공개키의 문자열을 키로하여 개인키를 저장한다.
		session.setAttribute("__rsaPrivateKey__", privateKey);

		// 공개키를 문자열로 변환하여 JavaScript RSA 라이브러리 넘겨준다.
		RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);

		String publicKeyModulus = publicSpec.getModulus().toString(16);
		String publicKeyExponent = publicSpec.getPublicExponent().toString(16);

		request.setAttribute("publicKeyModulus", publicKeyModulus);
		request.setAttribute("publicKeyExponent", publicKeyExponent);
		
		
		return "login.tiles";
	}
	
	@RequestMapping(value="loginAF.do",method=RequestMethod.POST)
	public String loginAF(SistMemberVO vo, HttpServletRequest request, Model model) throws Exception{
		logger.info("loginAF.do 실행중");
		
		//비밀번호 복호화
		HttpSession session = request.getSession();
		PrivateKey privateKey = (PrivateKey) session.getAttribute("__rsaPrivateKey__");
		session.removeAttribute("__rsaPrivateKey__");
		
		if (privateKey == null) {
            throw new RuntimeException("암호화 비밀키 정보를 찾을 수 없습니다.");
        }
        try {
        	String password = decryptRsa(privateKey, vo.getM_pw());
            
        	System.out.println("pw : "+password);
        	vo.setM_pw(getMD5(password));
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage(), ex);
        }
		        

		SistMemberVO memvo = sistMemberService.login(vo);
		String no_login="회원의 아이디가 비활성화 상태이거나 등록되지 않은 아이디 입니다.";
		
		if(memvo == null){
			request.getSession().setAttribute("no_login", no_login);
			return "redirect:login.do";
		}else{
			request.getSession().setAttribute("login", memvo);
			
		}
		return "index.tiles";
	}
	
	@RequestMapping(value="regi.do",method=RequestMethod.GET)
	public String regi(HttpServletRequest request, Model model) throws Exception{
		logger.info("regi.do 실행중");
		
		KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
		generator.initialize(512);

		KeyPair keyPair = generator.genKeyPair();
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");

		PublicKey publicKey = keyPair.getPublic();
		PrivateKey privateKey = keyPair.getPrivate();

		HttpSession session = request.getSession();
		// 세션에 공개키의 문자열을 키로하여 개인키를 저장한다.
		session.setAttribute("__rsaPrivateKey__", privateKey);

		// 공개키를 문자열로 변환하여 JavaScript RSA 라이브러리 넘겨준다.
		RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);

		String publicKeyModulus = publicSpec.getModulus().toString(16);
		String publicKeyExponent = publicSpec.getPublicExponent().toString(16);

		request.setAttribute("publicKeyModulus", publicKeyModulus);
		request.setAttribute("publicKeyExponent", publicKeyExponent);
		
		
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
		
		//비밀번호 복호화
		HttpSession session = request.getSession();
		PrivateKey privateKey = (PrivateKey) session.getAttribute("__rsaPrivateKey__");
		session.removeAttribute("__rsaPrivateKey__");
		
		if (privateKey == null) {
            throw new RuntimeException("암호화 비밀키 정보를 찾을 수 없습니다.");
        }
        try {
        	String password = decryptRsa(privateKey, vo.getM_pw());
            
        	System.out.println("pw : "+password);
        	vo.setM_pw(getMD5(password));
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage(), ex);
        }

		sistMemberService.insertMember(vo);
		
		SendEmail send = new SendEmail(vo.getM_id(), vo.getM_email());
		

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
	
	
	
	
	@RequestMapping(value="getId.do", method=RequestMethod.POST)
	@ResponseBody
	public YesMember getID(SistMemberVO vo , Model model) throws Exception{
		logger.info("getID.do 이동중");
		
		System.out.println("m_id = "+vo.getM_id());
		
		int count = sistMemberService.getId(vo);
		
		YesMember yes = new YesMember();
		
		if(count > 0 ){
			yes.setMessage("Suc");
		}else {
			yes.setMessage("Fai");
		}
		
		return yes;
		
	}
	
	@RequestMapping(value="sendemail.do", method=RequestMethod.GET)
	public String sendemail(HttpServletRequest request, Model model){
		logger.info("sendemail.do 실행중");
		
		String m_id = request.getParameter("m_id");
		
		sistMemberService.updateActionMember(m_id);
		
		return "index.tiles";
	}
	
	//전달 받은 암호화된 비밀번호 복호화
	 private String decryptRsa(PrivateKey privateKey, String securedValue) throws Exception {
	        System.out.println("will decrypt : " + securedValue);
	        Cipher cipher = Cipher.getInstance("RSA");
	        byte[] encryptedBytes = hexToByteArray(securedValue);
	        cipher.init(Cipher.DECRYPT_MODE, privateKey);
	        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
	        String decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
	        return decryptedValue;
	    }
	 
	 public static byte[] hexToByteArray(String hex) {
	        if (hex == null || hex.length() % 2 != 0) {
	            return new byte[]{};
	        }

	        byte[] bytes = new byte[hex.length() / 2];
	        for (int i = 0; i < hex.length(); i += 2) {
	            byte value = (byte)Integer.parseInt(hex.substring(i, i + 2), 16);
	            bytes[(int) Math.floor(i / 2)] = value;
	        }
	        return bytes;
	    }
	 
	//전달 받은 암호화된 비밀번호 복호화
	 
	 
	 //디비 넣을때 암호화
	 private String getMD5( String strVal ){
		 StringBuffer sb = new StringBuffer();
	  try{
	   byte[] digest = java.security.MessageDigest.getInstance("MD5").digest( strVal.getBytes() );
	   sb.setLength(0);
		   for( int i = 0; i < digest.length; i++ ) { 
		    sb.append( Integer.toString( ( digest[i] & 0xf0) >> 4, 16 ) ); 
		    sb.append( Integer.toString( digest[i] & 0x0f, 16 ) );
		   }
	   return sb.toString();
	  }catch( Exception ex ){
	   return "";
	  }
	  
	 }
	 
	
	
	
}
