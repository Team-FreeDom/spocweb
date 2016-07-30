package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Apply;
import com.spoc.po.College;

@Repository("collegeDao")
public class CollegeDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<College> getColleges()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from College");
		List<College> list=query.list();
		
		return list;
	}
}
