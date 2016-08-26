package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.product;

@Repository("productdao")
public class productdao
{
	@Autowired
	private SessionFactory sessionfactory;
	public List<product> getpath()
	{
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from product where flag=1");
		List<product> list=query.list();
		session.close();
		return list;
	}
	public List<product> getproducts()
	{
		Session session=sessionfactory.openSession();
		List<product> products=null;
		try
		{
			Query query=session.createQuery("from products");
			products=query.list();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		finally
		{
			session.close();
		}
		return products;
	}
}
