package com.spoc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spoc.dao.Charge_categoryDao;
import com.spoc.po.Affair_category;

@Service("Charge_categoryService")
public class Charge_categoryService
{
	@Autowired
	private Charge_categoryDao charge_categorydao;
	public List<Affair_category> getCharge()
	{
		return charge_categorydao.getCharge();
	}
	

}
