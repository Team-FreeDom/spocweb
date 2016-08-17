package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Charge_Standard;

@Repository("charge_StandardDao")
public class Charge_StandardDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void deleteCharges(int acid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=session.createQuery("from Charge_Standard where acid=?");
		query.setInteger(0, acid);
		List<Charge_Standard> list=query.list();
		for(Charge_Standard cs:list)
		{
			session.delete(cs);
		}
		session.getTransaction().commit();
	}
}
