package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair;
import com.spoc.po.College;

@Repository("affairDao")
public class AffairDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Affair> getAffairs()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Affair");
		List<Affair> list=query.list();
		
		return list;
	}
}
