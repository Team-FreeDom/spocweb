package com.spoc.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.spoc.po.member_product;;

@Repository("productsdao")
public class productsdao
{
	@Autowired
	private SessionFactory sessionfactory;
	public void deleteproducts(int pid)
	{
		Session session=sessionfactory.openSession();
		Transaction tx=null;
		try
		{
			tx=session.beginTransaction();
			Query query=session.createQuery("from member_product where pid=?");
			query.setInteger(0, pid);
			member_product pr=(member_product)query.uniqueResult();
			session.delete(pr);
			tx.commit();
		}
		catch(Exception ex)
		{
			if(tx!=null)
			{
				tx.rollback();
			}
			System.out.println(ex);
		}
		finally
		{
			session.close();
		}
	}
}
