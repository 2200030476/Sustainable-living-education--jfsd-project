package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@GetMapping("/dashboard")
	public String showDashboard() {
	    return "dashboard";
	}

	@GetMapping("/analytics")
	public String showAnalytics() {
	    return "analytics";
	}

	@GetMapping("/settings")
	public String showSettings() {
	    return "settings";
	}

	@GetMapping("/help")
	public String showHelp() {
	    return "help";
	}

	
	@GetMapping("userreg")
	public ModelAndView userreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userreg");
		return mv;
	}

	@PostMapping("insertstudent")
	  public ModelAndView insertuser(HttpServletRequest request) {
	    int id = (int) (Math.random() * 9000) + 1000;
	    String name = request.getParameter("name");
	    String gender = request.getParameter("gender");
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    String contact = request.getParameter("contact");

	    Student student = new Student();
	    student.setStudentId(id);
	    student.setStudentName(name);
	    student.setStudentGender(gender);
	    student.setStudentEmail(email);
	    student.setStudentPassword(password);
	    student.setStudentContact(contact);

	    String msg = studentService.StudentRegistration(student);

	    ModelAndView mv = new ModelAndView("regsuccess");
	    mv.addObject("message", msg);

	    return mv;
	  }}