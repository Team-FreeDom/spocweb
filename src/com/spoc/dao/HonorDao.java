package com.spoc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spoc.po.Affair_category;
import com.spoc.po.Apply;
import com.spoc.po.Honor;
import com.spoc.po.Member;
import com.spoc.po.Type_category;
@Repository("honorDao")
public class HonorDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Honor> getHonor()
	{
		Session session=sessionFactory.openSession();
		List<Honor> list=null;
		try {
			Query query=session.createQuery("from Honor");
			list = query.list();

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			session.close();
		}
		return list;
	} 
	public void updateHonor(int hid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Honor ap=(Honor) session.get(Honor.class,hid);
		session.update(ap);
		session.getTransaction().commit();
	}
	public void doHonor(Honor honor)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(honor);
		session.getTransaction().commit();
		
	}
	public void updategonor(Honor Hn)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction = null;
		try{
		transaction=session.beginTransaction();
		session.update(Hn);
		transaction.commit();
		}catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();//回滚事务，撤消查询语句
			}
			System.out.println(ex);
		} finally {
			session.close();// 关闭会话状态，清空资源
		}	
	}
	

}
