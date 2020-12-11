package com.demo.dao;

import java.util.List;

import com.demo.model.LoginVO;

public interface LoginDAO {

	void insert(LoginVO loginVO);

	List<LoginVO> search();

}
