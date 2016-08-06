package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
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
	
	public void deleteMember(String loginid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=session.createQuery("from Member_group where loginid=?");
		query.setString(0, loginid);
		List<Member_group> list=query.list();
		for(Member_group mg:list)
		{
			session.delete(mg);
		}
		session.getTransaction().commit();
	}
	
	public void updateMember(Member_group mg)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(mg);
		session.getTransaction().commit();
	}
}
