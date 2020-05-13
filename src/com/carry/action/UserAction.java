package com.carry.action;

import org.apache.struts2.ServletActionContext;
import com.carry.dao.impl.AdminImpl;
import com.carry.pojo.Admin;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	private Admin admin;
	private String repassword;
	
	public void validateRegister() {
		if("".equals(admin.getUsername())) {
			this.addFieldError("admin.username", "用户名不能为空！");
		}
		if("".equals(admin.getPassword())) {
			this.addFieldError("admin.password", "密码不能为空！");
		}
		if("".equals(getRepassword())) {
			this.addFieldError("repassword", "确认密码不能为空！");
		}
		if(!getRepassword().equals(admin.getPassword())) {
			this.addFieldError("repassword", "两次密码不相同！");
		}
		if("".equals(admin.getEmail())) {
			this.addFieldError("admin.email", "邮箱不能为空！");
		}
	}
	public void validateLogin() {
		System.out.println(admin.getUsername());
		if("".equals(admin.getUsername())) {
			this.addFieldError("admin.username", "请输入用户名！");
		}
		if("".equals(admin.getPassword())) {
			this.addFieldError("admin.password", "请输入密码！");
		}
	}
	
	public String register() {
		new AdminImpl().register(admin);
		return "success";
	}
	public String login() {
		Admin admininfo = new AdminImpl().getAdmin(admin.getUsername());
		if(admininfo.getPassword().equals(admin.getPassword())) {
			ServletActionContext.getRequest().getSession().setAttribute("username", admininfo.getUsername());
			return "success";
		}else {
			return "fail";
		}
	}
	
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
}
