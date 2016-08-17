package com.spoc.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="affair") 
public class Affair
{
	 @Id  
	 @GeneratedValue(strategy=GenerationType.AUTO)
	private int aff_id;
	private String name;
	private String phone;
	private String content;
    private int flag;
	private String doc;
	private String loginid;
	private String type;
	public Affair(int aff_id, String name, String phone, String content,
			int flag, String doc, String loginid, String type)
	{
		super();
		this.aff_id = aff_id;
		this.name = name;
		this.phone = phone;
		this.content = content;
		this.flag = flag;
		this.doc = doc;
		this.loginid = loginid;
		this.type = type;
	}
	public Affair( String name, String phone, String content,
			String type)
	{
		super();
		this.name = name;
		this.phone = phone;
		this.content = content;
		this.type = type;
	}
	public Affair()
	{
		super();
	}
	public int getAff_id()
	{
		return aff_id;
	}
	public void setAff_id(int aff_id)
	{
		this.aff_id = aff_id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public int getFlag()
	{
		return flag;
	}
	public void setFlag(int flag)
	{
		this.flag = flag;
	}
	public String getDoc()
	{
		return doc;
	}
	public void setDoc(String doc)
	{
		this.doc = doc;
	}
	public String getLoginid()
	{
		return loginid;
	}
	public void setLoginid(String loginid)
	{
		this.loginid = loginid;
	}
	public String getType()
	{
		return type;
	}
	public void setType(String type)
	{
		this.type = type;
	}
	

}
