package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
	public Student checkstdlogin(String eemail,String pwd);

	public String StudentRegistration(Student u);
}
