package com.spoc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Member_group;

@Repository("member_groupDao")
public class Member_groupDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void doMemberGroup(Member_group member_group)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(member_group);
		session.getTransaction().commit();
	}
}
