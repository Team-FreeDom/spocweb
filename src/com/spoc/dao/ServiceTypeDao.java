package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair_category;
import com.spoc.po.Service_type;

@Repository("serviceTypeDao")
public class ServiceTypeDao {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Service_type> getServiceTypes() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Service_type");
		List<Service_type> list = query.list();
		return list;
	}
	
	public void doServiceType(Service_type st)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(st);
		session.getTransaction().commit();
	}
	
	public void deleteType(Service_type st)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(st);
		session.getTransaction().commit();
	}
	
	public List<Service_type> getType(String type)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Service_type where type=?");
		query.setString(0, type);
		List<Service_type> list=query.list();
		return list;
	}
	
}
