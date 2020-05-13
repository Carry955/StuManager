package com.carry.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.carry.dao.impl.StuImpl;
import com.carry.pojo.Stu;
import com.opensymphony.xwork2.ActionSupport;

public class StuAction extends ActionSupport{
	private Stu stu;
	
	public void validateAddStu() {
		if("".equals(stu.getId())) {
			this.addFieldError("stu.id", "学号不能为空！");
		}
		if("".equals(stu.getName())) {
			this.addFieldError("stu.name", "姓名不能为空！");
		}
		if("".equals(stu.getGender())) {
			this.addFieldError("stu.gender", "性别不能为空！");
		}
		if(stu.getEnteryear() == null) {
			this.addFieldError("stu.enteryear", "入学年份不能为空！");
		}
		if("".equals(stu.getNativeplace())) {
			this.addFieldError("stu.nativeplace", "户籍地不能为空！");
		}
		if("".equals(stu.getPhone())) {
			this.addFieldError("stu.phone", "电话不能为空！");
		}
		if("".equals(stu.getMajor())) {
			this.addFieldError("stu.major", "专业不能为空！");
		}
	}
	public void validateUpdateStu() {
		if("".equals(stu.getName())) {
			this.addFieldError("stu.name", "姓名不能为空！");
		}
		if("".equals(stu.getGender())) {
			this.addFieldError("stu.gender", "性别不能为空！");
		}
		if(stu.getEnteryear() == null) {
			this.addFieldError("stu.enteryear", "入学年份不能为空！");
		}
		if("".equals(stu.getNativeplace())) {
			this.addFieldError("stu.nativeplace", "户籍地不能为空！");
		}
		if("".equals(stu.getPhone())) {
			this.addFieldError("stu.phone", "电话不能为空！");
		}
		if("".equals(stu.getMajor())) {
			this.addFieldError("stu.major", "专业不能为空！");
		}
	}
	
	public String stuList() {
//		if(checkLogin()) {
			List<Stu> stus = new StuImpl().stuList();
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("stus", stus);
			return "success";
//		}else {
//			return "fail";
//		}
	}
	public String addStu() {
//		if(checkLogin()) {
			new StuImpl().addStu(stu);
			return "success";
//		}else {
//			return "fail";
//		}
	}
	public String delStu() {
//		if(checkLogin()) {
			new StuImpl().delStu(stu.getId());
			return "success";
//		}else {
//			return "fail";
//		}
	}
	public String modifyStu() {
//		if(checkLogin()) {
			Stu stuinfo = new StuImpl().getStu(stu.getId());
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("stu", stuinfo);
			return "success";
//		}else {
//			return "fail";
//		}
	}
	public String updateStu() {
//		if(checkLogin()) {
			new StuImpl().updateStu(stu);
			return "success";
//		}else {
//			return "fail";
//		}
	}
	
	public Stu getStu() {
		return stu;
	}
	public void setStu(Stu stu) {
		this.stu = stu;
	}
//	public boolean checkLogin() {
//		HttpServletRequest request = ServletActionContext.getRequest();
//		if(request.getSession().getAttribute("username") != null) {
//			return true;
//		}else {
//			return false;
//		}
//	}
}