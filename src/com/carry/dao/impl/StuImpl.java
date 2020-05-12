package com.carry.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.carry.dao.StuDao;
import com.carry.pojo.Stu;
import com.carry.tools.SessionUtil;

public class StuImpl implements StuDao {

	@Override
	public List<Stu> stuList() {
		Session session = SessionUtil.getSession();
		List<Stu> stus = session.createQuery("from Stu").list();
		return stus;
	}

	@Override
	public boolean addStu(Stu stu) {
		Session session = SessionUtil.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(stu);
		transaction.commit();
		session.close();
		return true;
	}

	@Override
	public boolean delStu(String stuid) {
		Session session = SessionUtil.getSession();
		Transaction transaction = session.beginTransaction();
		Stu stuinfo = session.get(Stu.class, stuid);
		session.delete(stuinfo);
		transaction.commit();
		return true;
	}

	@Override
	public Stu getStu(String stuid) {
		Session session = SessionUtil.getSession();
		Stu stuinfo = session.get(Stu.class, stuid);
		return stuinfo;
	}

	@Override
	public boolean updateStu(Stu stu) {
		Session session = SessionUtil.getSession();
		Transaction transaction = session.beginTransaction();
		session.update(stu);
		transaction.commit();
		session.close();
		return true;
	}

}
