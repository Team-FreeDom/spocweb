package com.spoc.action;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

@Controller
public class checkFilter extends HttpServlet implements Filter{

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		//System.out.println("hello");
		HttpServletRequest req = (HttpServletRequest)arg0;    
        HttpServletResponse res = (HttpServletResponse)arg1; 
        if(req.getRequestURI().endsWith("admin.jsp"))  
        {  
        	if(req.getSession().getAttribute("user")==null)
        	{
            req.getRequestDispatcher("affair.do").forward(arg0, arg1); 
        	}else{
        		req.getRequestDispatcher("admin.do").forward(arg0, arg1);
        	}
            return;  
        }  
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
