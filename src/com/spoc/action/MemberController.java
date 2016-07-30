package com.spoc.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
		if(flag==1)
		{
			map.addAttribute("students", memberService.getStudents());
			return "displayStudents";
		}else{
			map.addAttribute("teachers", memberService.getTeachers());
			return "displayTeachers";
		}
		
	}
}
