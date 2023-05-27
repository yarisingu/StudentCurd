package com.tarun.Student.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tarun.Student.dto.Student;
import com.tarun.Student.repository.StudentRepository;


@Repository
public class StudentDao {
	
	@Autowired
	StudentRepository repo;
	
	public void save(Student student)
	{
		repo.save(student);
	}
	
	
	public Student find(int id) {
		Optional<Student> optional = repo.findById(id);
		if (optional.isEmpty()) {
			return null;
		} else{
			return optional.get();
		}}
		
	
	public void deleteById(int id) {
		repo.deleteById(id);
	}
		

	public List<Student> fetch() {
		return repo.findAll();
	}

	public List<Student> findByResult(String result) {
		return repo.findByResult(result);
	}
	
}
