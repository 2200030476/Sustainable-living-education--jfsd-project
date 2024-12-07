package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

	@Query("SELECT s FROM Student s WHERE s.studentEmail = ?1 AND s.studentPassword = ?2")
	Student checkstudentlogin(String email, String password);
}
