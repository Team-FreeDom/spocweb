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
	private AffairDao affairdao;
	public void add(Affair affair)
	{
		affairdao.add(affair);
		
	}
	public AffairDao getAffairdao()
	{
		return affairdao;
	}

	public void setAffairdao(AffairDao affairdao)
	{
		this.affairdao = affairdao;
	}
	public List<Affair> getAffairs()
	{
		return affairdao.getAffairs();
	}
	
	public void updateAffair(int aff_id,String loginid)
	{
		affairdao.updateAffair(aff_id, loginid);
	}
	
	public void deleteAffair(String[] str)
	{
		int aff_id=0;
		for(String id:str)
		{
			aff_id=Integer.valueOf(id);
			affairdao.deleteAffair(aff_id);
		}
	}
}
