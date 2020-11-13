package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello") //Parent Mapping
public class HelloWorldController {

	@RequestMapping("/showForm") //full path for this method now is /hello/showForm
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		//read the request parameter from HTML form
		String theName = request.getParameter("studentName");
		
		//convert all data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Yo! " + theName;
		
		//add that message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {
				
		//convert all data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Hey My Friend from v3! " + theName;
		
		//add that message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
}
