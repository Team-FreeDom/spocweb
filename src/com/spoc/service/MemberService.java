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
	
	public List<Member> getMember(String membername)
	{
		Member member=new Member();
		member.setName(membername);
		
		
		return memberDao.getMember(member);
		
		
	}
	
	public void deleteMembers(String[] str)
	{
	   Member member=null;
		for(int i=0;i<str.length;i++)
		{
			member=new Member();
			member.setLoginid(str[i]);
			memberDao.deleteMember(member);
			
		}
	}
	
	public Member getUniqueMember(String loginid)
	{
		return memberDao.getMember(loginid);
	}
	
	public void addMember(Member member)
	{
		memberDao.doMember(member);
	}
}
