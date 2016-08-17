package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair;
import com.spoc.po.Apply;
import com.spoc.po.Member;


@Repository("applyDao")
public class ApplyDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void doApply(Apply apply)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(apply);
		session.getTransaction().commit();
	}
	
	public List<Apply> getApply()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Apply");
		List<Apply> list=query.list();
		return list;
	} 
	public void updateApply(int apply_id)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Apply ap=(Apply) session.get(Apply.class,apply_id);
		session.update(ap);
		session.getTransaction().commit();
	}
}
