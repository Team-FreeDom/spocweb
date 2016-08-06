package com.spoc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spoc.dao.AffairDao;
import com.spoc.po.Affair;

@Service("affairService")
public class AffairService {

	@Autowired
	private AffairDao affairDao;
	
	public List<Affair> getAffairs()
	{
		return affairDao.getAffairs();
	}
}
