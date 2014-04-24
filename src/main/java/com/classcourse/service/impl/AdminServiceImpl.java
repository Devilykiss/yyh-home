package com.classcourse.service.impl;

import com.classcourse.dao.CourseDao;
import com.classcourse.dao.StudentDao;
import com.classcourse.dao.SyllabusDao;
import com.classcourse.dao.TeacherDao;
import com.classcourse.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private StudentDao studentDao;
	private TeacherDao teacherDao;
	private CourseDao courseDao;
	private SyllabusDao syllabusDao;
	public StudentDao getStudentDao() {
		return studentDao;
	}
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	public TeacherDao getTeacherDao() {
		return teacherDao;
	}
	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}
	public CourseDao getCourseDao() {
		return courseDao;
	}
	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}
	public SyllabusDao getSyllabusDao() {
		return syllabusDao;
	}
	public void setSyllabusDao(SyllabusDao syllabusDao) {
		this.syllabusDao = syllabusDao;
	}
		
	
}
