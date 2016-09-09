package sist.co.Controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SistCalendarController {
	private static final Logger logger = LoggerFactory.getLogger(SistCalendarController.class);
	
	@RequestMapping(value="calendar.do", method={RequestMethod.GET, RequestMethod.POST})
	public String calendar(Model model)throws Exception{
		logger.info("환영합니다 SistCalendarController calendar " + new Date());
		return "calendar.tiles";
	}
	
	
	// 일정, 약속쓰기 페이지 이동
	@RequestMapping(value="schwrite.do", method={RequestMethod.GET, RequestMethod.POST})
	public String schwrite(Model model)throws Exception{
		logger.info("환영합니다 SistCalendarController schwrite " + new Date());
		return "schwrite.tiles";
	}
	
	// 설정 페이지 이동
	@RequestMapping(value="setting.do", method={RequestMethod.GET, RequestMethod.POST})
	public String setting(Model model)throws Exception{
		logger.info("환영합니다 SistCalendarController setting " + new Date());
		return "setting.tiles";
	}
	
	// 달력 만들기 페이지 이동
	@RequestMapping(value="makecalendar.do", method={RequestMethod.GET, RequestMethod.POST})
	public String makecalendar(Model model)throws Exception{
		logger.info("환영합니다 SistCalendarController makecalendar " + new Date());
		return "makecalendar.tiles";
	}
	
	// 공유 달력 만들기 페이지 이동
	@RequestMapping(value="make_sharecalendar.do", method={RequestMethod.GET, RequestMethod.POST})
	public String make_sharecalendar(Model model)throws Exception{
		logger.info("환영합니다 SistCalendarController make_sharecalendar " + new Date());
		return "make_sharecalendar.tiles";
	}
	
	// 공유 달력 만들기 페이지 이동
		@RequestMapping(value="search_cal.do", method={RequestMethod.GET, RequestMethod.POST})
		public String search_cal(Model model)throws Exception{
			logger.info("환영합니다 SistCalendarController search_cal " + new Date());
			return "search_cal.tiles";
		}
}
