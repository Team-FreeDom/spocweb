package com.spoc.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.result.Output;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spoc.po.member_product;
import com.spoc.po.product;
import com.spoc.service.productservice;

@Controller("productController")
@RequestMapping("/jsp")
public class productController
{
	@Autowired
	private productservice proservice;
	@Autowired
	private productservice prosservice;	
	@RequestMapping("/products.do")
	public String getproducts(HttpServletRequest request,ModelMap map)
	{
		List<product> products=proservice.getProducts();
		map.addAttribute("products1", products);
		return "product";
	}
	@RequestMapping("/deleteproducts.do")
	public String deleteproducts(HttpServletRequest request,ModelMap map)
	{
		String[] str=request.getParameterValues("products");
		int [] pro = new int[str.length];
		for(int i=0;i<str.length;i++)
		{
			pro[i]=Integer.valueOf(str[i]).intValue();
		}
		prosservice.deleteproducts(pro);
		return "forward:products.do";
	}
	@RequestMapping(value="/updateproduct.do", method = RequestMethod.POST)
	public String updateproducts(HttpServletRequest request,ModelMap map)throws Exception
	{		
		String pidvalue=request.getParameter("pid");
		int pid=Integer.parseInt(pidvalue);
		String lpidvalue=request.getParameter("lpid");
		int lpid=Integer.parseInt(lpidvalue);
		String name = request.getParameter("name");
		String description= request.getParameter("description");
		String time = request.getParameter("time");
		String student = request.getParameter("student");
		String teacher = request.getParameter("teacher");
		String pro_path=request.getParameter("pro_path");
		String img_path=request.getParameter("img_path");
		String flagvalue = request.getParameter("flag");
		int flag=Integer.parseInt(flagvalue);
		product pr=new product(pid,name,time,description,pro_path,img_path,flag);
		member_product mpr=new member_product(lpid,pid,student,teacher);
		proservice.updateproducts(pr, mpr);
		return "forward:products.do";
	}
	@RequestMapping("/productsdetail.do")
	public String productdetail(HttpServletRequest request,ModelMap map)
	{
		String pidvalue=request.getParameter("id");
		int pid=Integer.parseInt(pidvalue);
		product pr=proservice.getproduct(pid);
		member_product mpr=proservice.getproducts(pid);
		map.addAttribute("pr", pr);
		map.addAttribute("mpr", mpr);
		return "detailproduct";
	}
}
