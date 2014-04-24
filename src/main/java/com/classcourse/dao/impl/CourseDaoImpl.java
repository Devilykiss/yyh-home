package com.classcourse.dao.impl;

import java.util.List;

import com.classcourse.dao.BaseDao;
import com.classcourse.dao.CourseDao;
import com.classcourse.domain.Course;

public class CourseDaoImpl extends BaseDao<Course> implements CourseDao{

	@Override
	public void saveCourse(Course cs) {
		this.save(cs);
	}

	@Override
	public Course findCourseById(Integer csId) {
		return this.queryForObject(Course.class, csId);
	}

	@Override
	public List<Course> queryAllCourse() {
		String hql = " from Course ";
		return this.queryForList(hql);
	}

	@Override
	public void deleteCourse(Course cs) {
		this.deletObject(cs);
	}
	
}
