package com.spoc.action;

import java.util.HashMap;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.spoc.po.Member;
//import com.spoc.po.member;
import com.spoc.service.UserService;

@SuppressWarnings("unused")
@org.springframework.stereotype.Controller

@RequestMapping("/jsp")
public class UserController
{
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login.do")
	public ModelAndView handleRequest(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		    String loginid = request.getParameter("loginid");
			String password = request.getParameter("password");
			System.out.println(loginid+password);
			boolean flag1=userService.find(loginid, password);
			HttpSession session=request.getSession();
			Member member=new Member();
			if(flag1)
			{				
				session.setAttribute("user", loginid);
			    return new ModelAndView("admin");
			}
			else
			{
				
				return new ModelAndView("index");
			}
	}
	  
	
	private Member getMember(String loginid, String password)
	{
		// TODO Auto-generated method stub
		return null;
	}


	public UserService getUserService()
	{
		return userService;
	}


	public void setUserService(UserService userService)
	{
		this.userService = userService;
	}


}
