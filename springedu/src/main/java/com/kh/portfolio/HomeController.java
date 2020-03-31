package com.kh.portfolio;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home"; //  ==> /WEB-INF/views/home.jsp
		return "index";
	}
	
	@GetMapping("/bs/test")
	public String test() {
		return "bstest";
	}
	
	@GetMapping("/bs/test2")
	public String test2() {
		return "bstest2";
	}
	
	@GetMapping("/rboard/rereplyForm")
	public String rereplyForm() {
		return "/board/rereply";
	}
	
//	@GetMapping("/sse/display")
//	public String display() {
//		return "/sse/display";
//	}
//	@GetMapping("/sse/memorymonitor")
//	public String memorymonitor() {
//		return "/sse/memorymonitor";
//	}
	
	
//	@GetMapping("/sse/stock")
//	public String stock() {
//		return "/sse/stock";
//	}
//	@GetMapping("/sse/stockServer")
//	public String stockServer() {
//		return "/sse/stockServer";
//	}
}













