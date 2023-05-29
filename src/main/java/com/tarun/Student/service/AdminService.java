package com.tarun.Student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.tarun.Student.dao.StudentDao;
import com.tarun.Student.dto.Student;
import com.tarun.Student.helper.AdminLogin;


import jakarta.servlet.http.HttpSession;

@Service
public class AdminService {
	
	@Autowired
	StudentDao dao;

	public ModelAndView login(AdminLogin login, HttpSession session) {
		ModelAndView view = new ModelAndView();
		
		if(login.getUsername().equals("admin")){
			if(login.getPassword().equals("admin")){
				session.setAttribute("admin", "admin");
				view.setViewName("Admin.jsp");
				 view.addObject("msg","Login scucess");
			}else {
				 view.setViewName("Admin.jsp");
				 view.addObject("msg","passcode worng");
			}
		}else {
			view.setViewName("Admin.jsp");
			view.addObject("msg","User Name / passcode Wrong");
		}
		return view;
	}

	
	public ModelAndView fetchById(Student id) {
		ModelAndView view = new ModelAndView();
		Student dto = dao.find(id.getId());
		if(dto==null)
		{
			view.setViewName("Admin.jsp");
			view.addObject("msg", "Data not Found");
		}
		else {
			view.setViewName("Fetchbyid.jsp");
			view.addObject("msg", "Data  Found");
			view.addObject("dto", dto);
		}
		return view;
	}


	public ModelAndView fetchAll() {
		ModelAndView view = new ModelAndView();
		List<Student> list = dao.fetch();
		if(list==null)
		{
			view.setViewName("Admin.jsp");
			view.addObject("msg", "Data not Found");
		}
		else {
			view.setViewName("Result.jsp");
			view.addObject("msg", "Data  Found");
			view.addObject("list", list);
		}
		return view;
		
	}

	public ModelAndView fetchByResult(Student result) {
		ModelAndView view = new ModelAndView();
		List<Student> list = dao.findByResult(result.getResult());
		if((result.getResult().equals("Distinction"))|| (result.getResult().equals("FirstClass"))||(result.getResult().equals("Fail")))
		{
				if(list.isEmpty())
				{	
					view.addObject("msg", "Data not Found");
					view.setViewName("Admin.jsp");
				}
				else {
					view.addObject("msg", "Data  Found");
					view.setViewName("Fetchbyresult.jsp");
					view.addObject("list1", list);
				}
		}
		else {
			view.addObject("msg", "Plese Filter Using This Words  Distinction, FirstClass,Fail");
			view.setViewName("Admin.jsp");
		}
		return view;
	}


	public ModelAndView deleteById(int id) {
		ModelAndView view = new ModelAndView();
		
		Student dto = dao.find(id);
		dao.deleteById(id);
			view.setViewName("Admin.jsp");
			view.addObject("msg", "Data  Delete Sucessfully");
		return view;
	}

}
