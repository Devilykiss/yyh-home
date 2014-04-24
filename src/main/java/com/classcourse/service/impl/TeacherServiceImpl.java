package com.classcourse.service.impl;

import java.util.List;

import com.classcourse.dao.TeacherDao;
import com.classcourse.domain.Teacher;
import com.classcourse.service.TeacherService;

public class TeacherServiceImpl implements TeacherService {
	private TeacherDao teacherDao;
	
	public TeacherDao getTeacherDao() {
		return teacherDao;
	}
	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	@Override
	public void saveTeacher(Teacher th) {
		teacherDao.saveTeacher(th);
	}

	@Override
	public Teacher findTeacherByNo(Integer thNo) {
		return teacherDao.findTeacherByNo(thNo);
	}
	
	@Override
	public Teacher checkTeacherLogin(Integer thNo,String password){
		return teacherDao.findTeacherLogin(thNo, password);
	}
	
	@Override
	public List<Teacher> queryAllTeacher() {
		return teacherDao.queryAllTeacher();
	}
	
	@Override
	public void deleteTeacher(Teacher th) {
		teacherDao.deleteTeacher(th);
	}
	@Override
	public Teacher queryTeacherObject(Integer teacherID) {
		return teacherDao.queryTeacherObject(teacherID);
	}
}
