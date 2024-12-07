package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepo;

	@Override
	public Student checkstdlogin(String eemail, String pwd) {
		return studentRepo.checkstudentlogin(eemail, pwd);
	}

	@Override
	public String StudentRegistration(Student u) {
		studentRepo.save(u);
		return "User Registered Successfully";
	}
	
}
