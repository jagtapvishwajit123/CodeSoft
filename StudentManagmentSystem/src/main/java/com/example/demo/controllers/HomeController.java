package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.student;
import com.example.demo.repo.studentRepo;
import com.example.demo.service.studentService;

@Controller
public class HomeController 
{
	@Autowired
	studentService ss;
	@Autowired
	studentRepo sr;
	@RequestMapping("/")
	public String index()
	{
		return "index";
		
	}
	
	@RequestMapping("/addstudent")
	public String add()
	{
		return "addstudent";
		
	}
	
	@PostMapping("/add")
	public String addstudent(@ModelAttribute("s") student s)
	{
		ss.adddata(s);
		return "redirect:/allstudent";
		
	}
	
	@RequestMapping("/allstudent")
	public String alldata(ModelMap m)
	{
		List<student> stud = ss.showall();
		m.addAttribute("stud",stud);
		return "allstudent";
		
	}
	
	@RequestMapping("/edit")
	public String editdata(@RequestParam("id") int id,ModelMap m,student s)
	{
		student st = ss.editdata(id);
		m.addAttribute("st",st);
		return "edit";
		
	}
	
	@PostMapping("/update")
	public String up(@ModelAttribute("s2") student s2)
	{
		ss.updatedata(s2);
		return "redirect:/allstudent";
		
	}
	
	@RequestMapping("/delete")
	public String del(@RequestParam("id") int id) 
	{
		ss.del(id);
		return "redirect:/allstudent";
		
	}

	@PostMapping("/search")
	public String search(@RequestParam("q") String name,ModelMap m )
	{
		List<student> s5 = sr.findByNameContainingIgnoreCase(name);
		m.addAttribute("result",s5);
		return "search_result";
		
	}
}
