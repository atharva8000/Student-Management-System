package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface Studentrepository extends JpaRepository<Student, Integer> {

	public List<Student> findByUsernameAndPassword(String username,String password);
	
	@Query(value="from Student where username=?1 and password=?2")
	public List<Student> getUsernameAndPassword(String username,String password);
	
	public List<Student> findByUsername(String username);
	
	public List<Student> findByUsernameOrPassword(String username,String password);
	
	
	@Transactional
	@Modifying
	public void deleteByRollno(int rollno);
	@Transactional
	@Modifying
	public void deleteByName(String name);
	
	@Query(value="from Student")
	public List<Student> getAllData();
}
