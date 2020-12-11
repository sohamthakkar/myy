package com.demo.dao;

import java.util.List;

import com.demo.model.RegisterVO;

public interface RegisterDAO {

	void insert(RegisterVO registerVO);

	List<RegisterVO> search();

	List<RegisterVO> findById(int id);
	
}
