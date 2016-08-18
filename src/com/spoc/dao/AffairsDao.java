package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affairs;

@Repository("affairsDao")
public class AffairsDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Affairs> getAffairs(String name)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Affairs where name=?");
		query.setString(0,name);
		List<Affairs> affairs=query.list();
		return affairs;
	}

}
