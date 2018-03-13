package cn.houshiyou.web;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 @Controller
public class WebController {
	@RequestMapping("/at")
	public String init(HttpServletRequest req,HttpServletResponse resp){
		
		return "welcome";
	}
	 
}
