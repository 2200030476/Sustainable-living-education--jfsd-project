package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminSerivce;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
	
	@Autowired
	private AdminSerivce adminService;
	
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }
	@GetMapping("/student-dashboard")
	public String studentDashboard() {
	    return "student-dashboard"; // Returns the student dashboard page
	}

	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@PostMapping("checklogin")
    public ModelAndView checklogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String identifier = request.getParameter("identifier"); // Use 'email' for User and Curator, 'username' for Admin
        String password = request.getParameter("password");

        Admin admin = adminService.checkadminlogin(identifier, password);
        Student student = studentService.checkstdlogin(identifier, password);

        if (admin != null) {
            request.getSession().setAttribute("admin", admin);
            mv.setViewName("adminhome");
        }
        else if (student != null) {
          request.getSession().setAttribute("student", student);
            mv.setViewName("studenthome");
        } 
        else {
            mv.addObject("message", "Login failed, please check your credentials.");
            mv.setViewName("login");
        }
        return mv;
    }
}
