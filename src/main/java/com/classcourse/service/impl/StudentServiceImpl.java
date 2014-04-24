package com.classcourse.service.impl;

import java.util.List;

import com.classcourse.dao.StudentDao;
import com.classcourse.domain.Student;
import com.classcourse.service.StudentService;

public class StudentServiceImpl implements StudentService {
	private StudentDao studentDao;

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	
	public void saveStudent(Student stu){
		studentDao.saveStudent(stu);
	}
	
	public Student findStudentByNo(Integer stuNo){
		return studentDao.findStudentByNo(stuNo);
	}
	
	public Student checkStudentLogin(Integer stuNo,String password){
		return studentDao.queryStudentLogin(stuNo, password);
	}

	@Override
	public List<Student> queryAllStudents() {
		return studentDao.queryAllStudents();
	}

	@Override
	public void deleteStudent(Student stu) {
		studentDao.deleteStudent(stu);
	}

	@Override
	public Student queryStudentObject(Integer studentID) {
		return studentDao.queryStudentObject(studentID);
	}

}
