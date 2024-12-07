package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;

public interface AdminSerivce {
	public Admin checkadminlogin(String uname,String pwd);
}
