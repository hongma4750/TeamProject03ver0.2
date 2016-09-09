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

import sist.co.Service.SistBlogService;



@Controller
public class SistBlogController {
	
	private static final Logger logger = LoggerFactory.getLogger(SistBlogController.class);
	 
/*	@Autowired
	SistBlogService sistBlogService;
*/
	@RequestMapping(value="blog.do",method=RequestMethod.GET)
	public String blog(Model model){
		logger.info("welcome SistBlogController blog");
		return "blog.tiles";
	}
	
	/*글쓰기 페이지로 이동*/
	@RequestMapping(value="bbswrite.do",method=RequestMethod.GET)
	public String bbswrite(Model model){
		logger.info("welcome SistBlogController bbswrite");
		return "bbswrite.tiles";
	}
	
	/*게시물 수정페이지로 이동*/
	@RequestMapping(value="bbsupdate.do",method=RequestMethod.GET)
	public String bbsupdate(Model model){
		logger.info("welcome SistBlogController bbsupdate");
		return "bbsupdate.tiles";
	}
	
	/* 블로그 내의 검색페이지로 이동*/
	@RequestMapping(value="blogsearch.do",method=RequestMethod.GET)
	public String blogsearch(Model model){
		logger.info("welcome SistBlogController blogsearch");
		return "blogsearch.tiles";
	}
	
	/* 앨범형 블로그로 이동 */
	@RequestMapping(value="pictype.do",method=RequestMethod.GET)
	public String pictype(Model model){
		logger.info("welcome SistBlogController pictype");
		return "pictype.tiles";
	}
	
	/*블로그형 게시판 상세페이지*/
	@RequestMapping(value="BbbsDetail.do",method=RequestMethod.GET)
	public String BbbsDetail(Model model){
		logger.info("welcome SistBlogController BbbsDetail");
		return "BbbsDetail.tiles";
	}
	
	
	/*앨범형 게시판 상세 페이지*/
	@RequestMapping(value="PbbsDetail.do",method=RequestMethod.GET)
	public String PbbsDetail(Model model){
		logger.info("welcome SistBlogController PbbsDetail");
		return "PbbsDetail.tiles";
	}
	
	/*투표 팝업 페이지*/
	@RequestMapping(value="poll_pop.do",method=RequestMethod.GET)
	public String poll_pop(Model model){
		logger.info("welcome SistBlogController poll_pop");
		return "poll_pop.tiles";
	}
	
	
	
	
	
	
	
	
	
}
