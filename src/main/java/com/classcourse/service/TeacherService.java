package com.classcourse.service;

import java.util.List;

import com.classcourse.domain.Teacher;

public interface TeacherService {
	/**
	 * 添加 修改教师信息
	 **/
	public void saveTeacher(Teacher th);
	/**
	 * 通过教师编号查询教师
	 **/
	public Teacher findTeacherByNo(Integer thNo);
	/**
	 * 通过教师编号和密码查询教师
	 **/
	public Teacher checkTeacherLogin(Integer thNo,String password);
	/**
	 * 查询所有教师信息
	 **/
	public List<Teacher> queryAllTeacher();
	
	public void deleteTeacher(Teacher th);
	
	public Teacher queryTeacherObject(Integer teacherID);

}
