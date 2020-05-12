package com.carry.pojo;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class Stu{
	private String id;
	private String name;
	private String gender;
	private Date enteryear;
	private String nativeplace;
	private String phone;
	private String major;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getEnteryear() {
		return enteryear;
	}
	public void setEnteryear(Date enteryear) {
		this.enteryear = enteryear;
	}
	public String getNativeplace() {
		return nativeplace;
	}
	public void setNativeplace(String nativeplace) {
		this.nativeplace = nativeplace;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	
}
