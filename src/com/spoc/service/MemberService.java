package com.spoc.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spoc.dao.MemberDao;
import com.spoc.po.Member;


@Service("memberService")
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	
	public List<Member> getStudents()
	{
		
	   return memberDao.getStudents();
	}
	
	public List<Member> getTeachers()
	{
		
	   return memberDao.getTeachers();
	}
}
