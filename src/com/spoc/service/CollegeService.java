package com.spoc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spoc.dao.CollegeDao;
import com.spoc.po.College;


@Service("collegeService")
public class CollegeService {

	@Autowired
	private CollegeDao collegeDao;
	
	public List<College> getCollege()
	{
		return collegeDao.getColleges();
	}
}
