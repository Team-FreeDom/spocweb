package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair_category;

@Repository("Charge_categoryDao")
public class Charge_categoryDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Affair_category> getCharge()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Affair_category");
		List<Affair_category> list=query.list();
		return list;
	}
	

}
