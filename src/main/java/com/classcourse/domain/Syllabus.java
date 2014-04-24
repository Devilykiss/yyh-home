package com.classcourse.domain;

public class Syllabus {
	private Integer id;
	private Integer userID;
	private Integer courseID;
	private Integer weekly;
	private Integer lessonNumber;
	
	private Course courseEntity;
	private Student studentEntity;
	private Teacher teacherEntity;
		                   
	
	public Integer getLessonNumber() {
		return lessonNumber;
	}
	public void setLessonNumber(Integer lessonNumber) {
		this.lessonNumber = lessonNumber;
	}
	public void setWeekly(Integer weekly) {
		this.weekly = weekly;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public Course getCourseEntity() {
		return courseEntity;
	}
	public void setCourseEntity(Course courseEntity) {
		this.courseEntity = courseEntity;
	}
	public Student getStudentEntity() {
		return studentEntity;
	}
	public void setStudentEntity(Student studentEntity) {
		this.studentEntity = studentEntity;
	}
	public Teacher getTeacherEntity() {
		return teacherEntity;
	}
	public void setTeacherEntity(Teacher teacherEntity) {
		this.teacherEntity = teacherEntity;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getWeekly() {
		return weekly;
	}
	
}
