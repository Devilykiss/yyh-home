package com.classcourse.service.impl;

import java.util.List;

import com.classcourse.dao.CourseDao;
import com.classcourse.dao.SyllabusDao;
import com.classcourse.domain.Course;
import com.classcourse.domain.Syllabus;
import com.classcourse.service.SyllabusService;

public class SyllabusServiceImpl implements SyllabusService {
	
	private CourseDao courseDao;
	
	private SyllabusDao syllabusDao;
	
	
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
	
	
	@Override
	public Course queryCourseObject(Integer courseID) {
		return courseDao.findCourseById(courseID);
	}
	
	@Override
	public List<Course> queryAllCourse() {
		return courseDao.queryAllCourse();
	}
	
	@Override
	public void saveCourse(Course course) {
		courseDao.saveCourse(course);
	}
	
	
	@Override
	public List<Course> listCourseByTeacherID(Integer teacherID) {
		return null;
	}
	@Override
	public void deleteCourse(Course cs) {
		courseDao.deleteCourse(cs);		
	}
	
	@Override
	public List<Syllabus> listSyllabusByUserID(Integer userID) {
		return syllabusDao.findSyllabusById(userID);
	}
}
