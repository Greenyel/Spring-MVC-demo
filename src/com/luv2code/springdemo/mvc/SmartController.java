package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SmartController {
	
	@RequestMapping("/showForm")
	public String displayTheForm() {
		return "smart";
	}
}