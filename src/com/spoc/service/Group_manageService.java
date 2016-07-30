package com.spoc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spoc.dao.Group_manageDao;
import com.spoc.po.Group_manage;


@Service("group_manageService")
public class Group_manageService {

	@Autowired
	private Group_manageDao group_manageDao;
	
	public List<Group_manage> getGroup()
	{
		return group_manageDao.getGroups();
	}
}
