package com.serviceimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Student;
import com.repository.Studentrepository;
import com.servicei.Studentservicei;

@Service
public class Studentserviceimpl implements Studentservicei {
	@Autowired
	Studentrepository sr;
	
     public void saveStudent(Student s) {
		
		sr.save(s);
	}
     
     public List<Student> loginStudent(String username,String password){
    	 if(username.equals("admin")&&password.equals("admin")) {
    		 Pageable page=PageRequest.of(0, 2, Sort.by("rollno").ascending());
    		 return (List<Student>)sr.findAll(page).getContent();
    	 }
    	 else {
    		 return sr.findByUsernameAndPassword(username,password);
    	 }
     }
     
     public List<Student> deleteStudent(int rollno){
    	 sr.deleteByRollno(rollno);
    	 return sr.findAll();
     }

     @Override
     public List<Student> paggingData(int pageNo){
    	 Pageable page=PageRequest.of(pageNo, 2, Sort.by("rollno").ascending());
    	 List<Student> list=sr.findAll(page).getContent();
    	 return list;
     }
     
     @Override
     public Student editStudent(int rollno) {
    	return sr.findById(rollno).get();
    	
     }
     
     @Override
     public List<Student> getAllData(){
    	 return sr.findAll();
     }
}
