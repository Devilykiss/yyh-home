package com.classcourse.dao.impl;

import java.util.List;

import com.classcourse.dao.BaseDao;
import com.classcourse.dao.TeacherDao;
import com.classcourse.domain.Teacher;

public class TeacherDaoImpl extends BaseDao<Teacher> implements TeacherDao{

	@Override
	public void saveTeacher(Teacher th) {
		this.save(th);
	}

	@Override
	public Teacher findTeacherByNo(Integer thNo) {
		String hql = " from Teacher where no= ? ";
		return this.queryObjectLogin(hql, thNo);
	}

	@Override
	public Teacher findTeacherLogin(Integer thNo, String password) {
		String hql = " from Teacher where no= ? and password = ? ";
		return this.queryObjectLogin(hql, thNo,password);
	}

	@Override
	public List<Teacher> queryAllTeacher() {
		String hql = " from Teacher ";
		return this.queryForList(hql);
	}

	@Override
	public void deleteTeacher(Teacher th) {
		this.deletObject(th);
	}

	@Override
	public Teacher queryTeacherObject(Integer teacherID) {
		return this.queryForObject(Teacher.class, teacherID);
	}
}
