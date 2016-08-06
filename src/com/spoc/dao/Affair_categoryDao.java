package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair_category;
import com.spoc.po.Affairs;

@Repository("affair_categoryDao")
public class Affair_categoryDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Affair_category> getAffairCa()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Affair_category");
		List<Affair_category> list=query.list();
		return list;
	}
	
	public Affair_category getAffairType(String affairtype)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Affair_category where name=?");
		query.setString(0, affairtype);
		Affair_category type=(Affair_category) query.uniqueResult();
		return type;
	}
	
	public void doAffairType(Affair_category at)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(at);
		session.getTransaction().commit();
	}
	
	public void deleteType(Affair_category at)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(at);
		session.getTransaction().commit();
	}
	
	public void updateType(Affair_category ac)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Affair_category at=(Affair_category)session.get(Affair_category.class, ac.getAcid());
		at.setName(ac.getName());
		at.setFlag(ac.getFlag());
		session.update(at);
		session.getTransaction().commit();
	}
}
