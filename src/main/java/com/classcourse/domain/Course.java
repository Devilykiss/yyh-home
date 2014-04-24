package com.classcourse.domain;

public class Course {
	private Integer id;
	private Integer no;
	private String name;
	private String type;
	private String info;
	private Integer credit;
	private Integer times;
	private Integer teacherID;
	private Integer classroomno;

	private ClassRoom classRoomEntity;
	private Teacher teacherEntity;
	
	
	

	public Integer getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
	}
	public Integer getClassroomno() {
		return classroomno;
	}
	public void setClassroomno(Integer classroomno) {
		this.classroomno = classroomno;
	}
	public ClassRoom getClassRoomEntity() {
		return classRoomEntity;
	}
	public void setClassRoomEntity(ClassRoom classRoomEntity) {
		this.classRoomEntity = classRoomEntity;
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
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Integer getCredit() {
		return credit;
	}
	public void setCredit(Integer credit) {
		this.credit = credit;
	}
	public Integer getTimes() {
		return times;
	}
	public void setTimes(Integer times) {
		this.times = times;
	}
}
