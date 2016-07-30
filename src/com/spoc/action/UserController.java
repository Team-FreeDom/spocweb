package com.spoc.action;

import java.util.HashMap;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.spoc.po.Student;
import com.spoc.service.UserService;


@org.springframework.stereotype.Controller

@RequestMapping("/jsp")
public class UserController
{
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login.do")
	public ModelAndView handleRequest(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		    String username = request.getParameter("username");
			String password = request.getParameter("password");
			boolean flag1=userService.find(username, password);
			Student student=new Student();
			if(flag1)
			{
				request.setAttribute("b", "欢迎登录思博课网站");
			    return new ModelAndView("index1");
			}
			else
			{
				request.setAttribute("c", "您的用户名或密码错误请重新输入");
				return new ModelAndView("error");
			}
	}
	  
	
	private Student getStudent(String username, String password)
	{
		// TODO Auto-generated method stub
		return null;
	}


}
