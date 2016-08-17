package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Service_type;
import com.spoc.po.Type_category;

@Repository("TypeCategoryDao")
public class TypeCategoryDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void doTypeCategory(Type_category tc)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(tc);
		session.getTransaction().commit();
	}
	
	public void updateTypeCategory(Type_category tc)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(tc);
		session.getTransaction().commit();
	}
	
	public void deleteTypeCategory(int tcid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Type_category tc=(Type_category) session.get(Type_category.class, tcid);
		session.delete(tc);
		session.getTransaction().commit();
	} 
	
	public List<Type_category> getTypes()
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Type_category");
		List<Type_category> list = query.list();
		return list;
	}
	
	public List<Type_category> getType(String str)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Type_category where description=?");
		query.setString(0, str);
		List<Type_category> list=query.list();
		return list;
	}
}
