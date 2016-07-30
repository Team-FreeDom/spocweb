package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Apply;
import com.spoc.po.College;
import com.spoc.po.Group_manage;

@Repository("group_manageDao")
public class Group_manageDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Group_manage> getGroups()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Group_manage");
		List<Group_manage> list=query.list();
		
		return list;
	}
}
