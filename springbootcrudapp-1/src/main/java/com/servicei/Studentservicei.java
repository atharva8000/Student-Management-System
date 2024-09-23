package com.servicei;


import java.util.List;

import com.model.Student;

public interface Studentservicei {

public void saveStudent(Student s);
public List<Student> loginStudent(String username,String password);
public List<Student> deleteStudent(int rollno);
public List<Student> paggingData(int pageNo);
public Student editStudent(int rollno);
public List<Student> getAllData();


}
