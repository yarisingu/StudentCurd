package com.tarun.Student.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.tarun.Student.dao.StudentDao;
import com.tarun.Student.dto.Student;

@Service
public class StudentService {
	
	
	@Autowired
	StudentDao dao;

	public ModelAndView save(Student student) {
		ModelAndView view = new ModelAndView("/Student.jsp");
		double percentage = student.getGpa();
		if(percentage>85)
		{
			student.setResult("Distinction");
		}
		else {
			if(percentage>60)
			{
				student.setResult("FirstClass");
			}
			else {
				student.setResult("Fail");
			}
		}
		dao.save(student);
		view.addObject("msg","Your id: "+student.getId()+" is Generated");
		return view;
	}
	

	public ModelAndView updateById(Student update) {
		ModelAndView view = new ModelAndView();
		Student student = dao.find(update.getId());
		if(student==null)
		{
			view.setViewName("/Student.jsp");
			view.addObject("msg", "Data Not Found");
		}
		else{
			view.addObject("data",student);
			view.setViewName("/Update.jsp");
			
		}
		return view;
	}

	
	
	public ModelAndView update(Student update) {
		ModelAndView view = new ModelAndView("/Student.jsp");
		double percentage = update.getGpa();
		if(percentage>85)
		{
			update.setResult("Distinction");
		}
		else {
			if(percentage>60)
			{
				update.setResult("FirstClass");
			}
			else {
				update.setResult("Fail");
			}
		}
		dao.save(update);
		view.addObject("msg","Data Added Sucessfully");
		return view;
	}


	
	
	

}
