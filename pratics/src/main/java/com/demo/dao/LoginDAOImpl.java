
package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(LoginVO loginVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(loginVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<LoginVO> search() {
		List<LoginVO> loginList = new ArrayList<LoginVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from LoginVO where status = true");
			loginList = (List<LoginVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return loginList;
	}

}
