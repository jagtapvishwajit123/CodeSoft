package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.student;
import com.example.demo.repo.studentRepo;
import com.example.demo.service.studentService;
@Service
public class studentDao implements studentService {

	@Autowired
	studentRepo sr;
	@Override
	public void adddata(student s) 
	{
		sr.save(s);
	}
	@Override
	public List<student> showall() {
		return sr.findAll();
	}
	@Override
	public student editdata(int id) 
	{
		student s1 = sr.getById(id);
		return s1;
	}
	@Override
	public void updatedata(student s2) 
	{
		sr.save(s2);
	}
	@Override
	public void del(int id) 
	{
		sr.deleteById(id);
	}
	

}
