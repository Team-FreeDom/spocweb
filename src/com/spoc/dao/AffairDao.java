package com.spoc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spoc.po.Affair;


@Repository("AffairDao")
public class AffairDao
{
	@Autowired
	private SessionFactory sessionFactory;
	public void add(Affair affair)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(affair);
		session.getTransaction().commit();
	}
	@SuppressWarnings("unchecked")
	public List<Affair> getAffairs()
	{
		Session session=sessionFactory.openSession();
		org.hibernate.Query query=session.createQuery("from Affair");
		List<Affair> list=query.list();
		
		return list;
	}
	
	public void updateAffair(int aff_id,String loginid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Affair af=(Affair) session.get(Affair.class, aff_id);
		af.setLoginid(loginid);
		af.setFlag(1);
		session.update(af);
		session.getTransaction().commit();
	}
	
	public void deleteAffair(int aff_id)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Affair af=(Affair) session.get(Affair.class,aff_id);
		session.delete(af);
		session.getTransaction().commit();
	}
	

}
