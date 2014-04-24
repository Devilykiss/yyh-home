package com.classcourse.dao;

import java.util.List;

import com.classcourse.domain.Course;


public interface CourseDao {
	
	public void saveCourse(Course cs);
	
	public Course findCourseById(Integer csId);
	
	public List<Course> queryAllCourse();

	public void deleteCourse(Course cs);
}
