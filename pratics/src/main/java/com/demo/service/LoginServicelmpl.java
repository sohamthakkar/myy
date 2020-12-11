package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.LoginDAO;
import com.demo.model.LoginVO;

@Service
@Transactional
public class LoginServicelmpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;

	@Override
	public void insert(LoginVO loginVO) {
		this.loginDAO.insert(loginVO);
	}

	@Override
	public List<LoginVO> search() {
		return this.loginDAO.search();
	}


}
