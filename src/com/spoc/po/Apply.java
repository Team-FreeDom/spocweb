package com.spoc.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="apply")
public class Apply {
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int apply_id;
	 private String name;
	 private String sex;
	 private String college;
	 private String grade;
	 private String major;
	 private String phone;
	 private String grouptype;
	public int getApply_id() {
		return apply_id;
	}
	public void setApply_id(int apply_id) {
		this.apply_id = apply_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getGrouptype() {
		return grouptype;
	}
	public void setGrouptype(String grouptype) {
		this.grouptype = grouptype;
	}
	
	public Apply(String name, String sex, String college, String grade,
			String major, String phone, String grouptype) {
		super();
		this.name = name;
		this.sex = sex;
		this.college = college;
		this.grade = grade;
		this.major = major;
		this.phone = phone;
		this.grouptype = grouptype;
	}
	public Apply() {
		super();
	}
	
	 
	 
}
