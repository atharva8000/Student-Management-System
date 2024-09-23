package com.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.Student;
import com.servicei.Studentservicei;

@Controller
public class HomeController {
     @Autowired
	 Studentservicei ssi;
     
	@RequestMapping("/")
	public String prelogin() {
		return "login";
	}
	
	@RequestMapping("/preregister")
	public String preregister() {
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute Student s,@RequestParam("image")MultipartFile file) throws IOException {
		System.out.println(s);
		String p=Base64.getEncoder().encodeToString(file.getBytes());
		s.setPhoto(p);
		ssi.saveStudent(s);
		return "login";
	}
	
	@RequestMapping("/login")
	public String loginstudent(@RequestParam("username")String username,@RequestParam("password")String password,Model m) {
		List<Student> l=ssi.loginStudent(username,password);
		if(l!=null) {
			m.addAttribute("data", l);
			return "success";
		}
		else {
			return "login";
		}
		
		
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("rollno")int rollno,Model m) {
		List<Student> list=ssi.deleteStudent(rollno);
		m.addAttribute("data",list);
		return "success";
	}
	
	@RequestMapping("/paging")
	public String paging(@RequestParam("pageNo")int pageNo,Model m) {
		List<Student> list=ssi.paggingData(pageNo);
		m.addAttribute("data",list);
		return "success";
	}
	
	@RequestMapping("/edit")
	public String editStudent(@RequestParam("rollno")int rollno,Model m) {
		Student s=ssi.editStudent(rollno);
		m.addAttribute("stu",s);
		return "edit";
		
	}
	
	@RequestMapping("/update")
	public String saveStudent(@ModelAttribute Student s,Model m )throws IOException {
		ssi.saveStudent(s);
		List<Student> list=ssi.getAllData(); 
		m.addAttribute("data",list);
		return "success";
	}
	
	
}
