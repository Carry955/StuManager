package com.carry.dao;

import java.util.List;
import com.carry.pojo.Stu;

public interface StuDao {
	public List<Stu> stuList();
	public boolean addStu(Stu stu);
	public boolean delStu(String stuid);
	public Stu getStu(String stuid);
	public boolean updateStu( Stu stu);
}
