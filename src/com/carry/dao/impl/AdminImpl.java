package com.carry.dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.carry.dao.AdminDao;
import com.carry.pojo.Admin;
import com.carry.tools.SessionUtil;

public class AdminImpl implements AdminDao {

	@Override
	public boolean register(Admin admin) {
		Session session = SessionUtil.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(admin);
		transaction.commit();
		session.close();
		return true;
	}

	@Override
	public Admin getAdmin(String username) {
		Session session = SessionUtil.getSession();
		Admin admininfo = (Admin)session.get(Admin.class, username);
		return admininfo;

	}

}
