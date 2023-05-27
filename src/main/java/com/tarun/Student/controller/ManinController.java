package com.tarun.Student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tarun.Student.helper.AdminLogin;
import com.tarun.Student.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ManinController {
	
	@Autowired
	AdminService adminservice;
	
	@PostMapping("login")
	public ModelAndView login(@ModelAttribute AdminLogin login , HttpSession session){
		return adminservice.login(login,session);
	}
	
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session)
	{
		session.invalidate();
		ModelAndView view = new ModelAndView("index.html");
		return view;
	}

}
