package com.spoc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spoc.dao.productdao;
import com.spoc.po.product;

@Service("productservice")
public class productservice
{
	@Autowired
	private productdao prodao;
	public List<product> getpath()
	{
		return prodao.getpath();
	}
	public List<product> getProducts()
	{
		return prodao.getproducts();
	}
	
}
