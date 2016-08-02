package com.spoc.action;

import java.util.ArrayList;
import java.util.List;

import javassist.expr.NewArray;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spoc.po.Member;
import com.spoc.service.MemberService;


@Controller("memberController")
@RequestMapping("/jsp")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/user.do")
	public String displayUsers(HttpServletRequest request,ModelMap map)
	{
		int flag=Integer.parseInt(request.getParameter("flag"));
		if(flag==2)
		{
			map.addAttribute("students", memberService.getStudents());
			return "student";
		}else{
			map.addAttribute("teachers", memberService.getTeachers());
			return "displayTeachers";
		}
		
	}
	
	@RequestMapping("/search.do")
	public String searchMember_student(HttpServletRequest request,ModelMap map)
	{
		String name=request.getParameter("membername");
		Member member=memberService.getMember(name);
		List<Member> list=new ArrayList<Member>();
		list.add(member);
		map.addAttribute("students", list);
		
		return "student";
	
	}
	
	@RequestMapping("/deleteMember.do")
	public String deleteMember(HttpServletRequest request,ModelMap map)
	{
		String[] check=request.getParameterValues("student");
		memberService.deleteMembers(check);
		return "admin";
	}
}
