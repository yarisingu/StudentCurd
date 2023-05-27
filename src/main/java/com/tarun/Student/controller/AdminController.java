package com.tarun.Student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.tarun.Student.dto.Student;
import com.tarun.Student.service.AdminService;

@Controller
public class AdminController {

	
	@Autowired
	AdminService adminservice;
	
	@GetMapping("findbyid")
	public ModelAndView findbyid(@ModelAttribute Student id){
		return adminservice.fetchById(id);
	}
	@GetMapping("fetchall")
	public ModelAndView fetchall(){
		return adminservice.fetchAll();
	}  
	@GetMapping("findbyresult")
	public ModelAndView findbyresult(@ModelAttribute Student result){
		return adminservice.fetchByResult(result);
	}
	
	@GetMapping("delete")
	public  ModelAndView deletebyid(@RequestParam int id)
	{
		return adminservice.deleteById(id);
	}
}