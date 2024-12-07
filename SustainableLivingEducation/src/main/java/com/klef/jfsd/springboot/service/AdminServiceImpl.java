package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminSerivce {

	
	@Autowired
	private AdminRepository adminRepo;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepo.checkadminlogin(uname, pwd);
	}

}
