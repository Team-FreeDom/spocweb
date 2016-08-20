package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair_category;
import com.spoc.po.Apply;
import com.spoc.po.Honor;
import com.spoc.po.Member;
@Repository("honorDao")
public class HonorDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Honor> getHonor()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Honor");
		List<Honor> list=query.list();
		return list;
	} 
	public void updateHonor(int hid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Honor ap=(Honor) session.get(Honor.class,hid);
		session.update(ap);
		session.getTransaction().commit();
	}
	public void doHonor(Honor honor)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(honor);
		session.getTransaction().commit();
		
	}
	

}
