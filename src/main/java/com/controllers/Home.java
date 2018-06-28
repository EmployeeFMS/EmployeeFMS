package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class Home {
	@RequestMapping("/")
	public String goHome() {
		return "home";
	}
	
	@RequestMapping("/staff")
	public String getStaff() {
		return "staff";
	}
	
	@RequestMapping("/employee")
	public String getEmployee() {
		return "employee";
	}
	
	@RequestMapping("/department")
	public String getDepartment() {
		return "department";
	}
}
