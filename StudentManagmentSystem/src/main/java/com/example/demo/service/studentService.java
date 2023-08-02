package com.example.demo.service;

import java.util.List;

import com.example.demo.model.student;

public interface studentService 
{
	public void adddata(student s);
	
	List<student> showall();
	
	student editdata(int id);
	
	void updatedata(student s2);
	
	void del(int id);
	
	

}
