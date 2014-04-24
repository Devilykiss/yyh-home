package com.classcourse.dao.impl;

import java.util.List;

import com.classcourse.dao.BaseDao;
import com.classcourse.dao.StudentDao;
import com.classcourse.domain.Student;

public class StudentDaoImpl extends BaseDao<Student> implements StudentDao{
	
	public void saveStudent(Student stu){
		this.save(stu);
	}
	
	public Student findStudentByNo(Integer stuNo){
		String hql = " from Student where no=? ";
		return this.queryObjectLogin(hql, stuNo);
	}
	public Student queryStudentLogin(Integer stuNo,String password){
		String hql = " from Student where no=? and password=? ";
		return this.queryObjectLogin(hql, stuNo,password);
	}

	@Override
	public List<Student> queryAllStudents() {
		String hql = " from Student ";
		return this.queryForList(hql);
	}

	@Override
	public void deleteStudent(Student stu) {
		this.deletObject(stu);
	}

	@Override
	public Student queryStudentObject(Integer studentID) {
		return this.queryForObject(Student.class, studentID);
	}
}
