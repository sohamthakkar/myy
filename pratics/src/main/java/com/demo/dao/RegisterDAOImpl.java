
package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.RegisterVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(RegisterVO registerVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(registerVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RegisterVO> search() {
		List<RegisterVO> registerList = new ArrayList<RegisterVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from RegisterVO where status = true");
			registerList = (List<RegisterVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return registerList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RegisterVO> findById(int id) {
		List<RegisterVO> registerList = new ArrayList<RegisterVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from RegisterVO where status = true and id = " + id);
			registerList = (List<RegisterVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return registerList;
	}
}
