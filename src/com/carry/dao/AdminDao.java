package com.carry.dao;

import com.carry.pojo.Admin;

public interface AdminDao {
	public boolean register(Admin admin);
	public Admin getAdmin(String username);
}
