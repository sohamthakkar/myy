package com.demo.service;

import java.util.List;

import com.demo.model.LoginVO;


public interface LoginService {

	void insert(LoginVO loginVO);

	List<LoginVO> search();

}
