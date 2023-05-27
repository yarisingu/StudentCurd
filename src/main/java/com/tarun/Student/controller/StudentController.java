package com.tarun.Student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tarun.Student.dto.Student;
import com.tarun.Student.service.StudentService;



@Controller
public class StudentController {
	
	@Autowired
	StudentService service;
	

	@GetMapping("StudentData.jsp")
	public ModelAndView homepage()
	{
		ModelAndView view = new ModelAndView("StudentHome.jsp");
		return view;
	}
	
	@PostMapping("save")
	public ModelAndView Addcource(@ModelAttribute  Student save){
		return service.save(save);
	}
	
	
	@PostMapping("transfer")
	public ModelAndView updateById(@ModelAttribute  Student update){
		return service.updateById(update);
	}
	
	
	@PostMapping("updates")
	public ModelAndView update(@ModelAttribute  Student update){
		return service.update(update);
	}

}
