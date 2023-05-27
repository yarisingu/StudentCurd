package com.tarun.Student.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tarun.Student.dto.Student;




public interface StudentRepository extends JpaRepository<Student, Integer>{

	List<Student> findByResult(String result);

}
