package com.classcourse.dao;

import java.util.List;

import com.classcourse.domain.Student;

public interface StudentDao {
	
	public void saveStudent(Student stu);
	
	public Student findStudentByNo(Integer stuNo);
	
	public Student queryStudentLogin(Integer stuNo,String password);
	
	public List<Student> queryAllStudents();
	
	public void deleteStudent(Student stu);
	
	public Student queryStudentObject(Integer studentID);
}
