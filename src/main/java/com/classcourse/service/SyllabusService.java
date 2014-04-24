package com.classcourse.service;

import java.util.List;

import com.classcourse.domain.Course;
import com.classcourse.domain.Syllabus;

public interface SyllabusService {
	
	public Course queryCourseObject(Integer courseID);
	
	public List<Course> queryAllCourse();
	
	public void saveCourse(Course course);

	public void deleteCourse(Course cs);
	
	public List<Course> listCourseByTeacherID(Integer teacherID);
	
	public List<Syllabus> listSyllabusByUserID(Integer userID);

}
