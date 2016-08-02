package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.College;
import com.spoc.po.Member;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Member> getStudents()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Member where flag=?");
		query.setInteger(0, 2);
		List<Member> list=query.list();
		
		return list;
	}
	
	public List<Member> getTeachers()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Member where flag=?");
		query.setInteger(0, 1);
		List<Member> list=query.list();
		
		return list;
	}
	
	public Member getMember(Member member)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Member where name=?");
		query.setString(0, member.getName());
		Member member1=(Member) query.uniqueResult();
		
		return member1;
		
	}
	
	public void deleteMember(Member member)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(member);
		session.getTransaction().commit();
	}
}
