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
}
