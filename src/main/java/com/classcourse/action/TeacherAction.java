package com.classcourse.action;

import java.util.List;

import com.classcourse.common.Globals;
import com.classcourse.domain.Course;
import com.classcourse.domain.Syllabus;
import com.classcourse.domain.Teacher;
import com.classcourse.service.SyllabusService;
import com.classcourse.service.TeacherService;

public class TeacherAction extends BaseAction{
	/**
	 * 教师操作action
	 */
	private static final long serialVersionUID = 2014422924L;
	private Teacher sessionTeacher = (Teacher)getSession().getAttribute(Globals.TEACHER);
	private TeacherService teacherService;
	private SyllabusService syllabusService;
	
	private Teacher teacherEntity;
	private Integer teacherID;
	private List<Teacher> teacherList;
	private List<Course> courseList;
	private List<Syllabus> syllabusList;
	
	
	public Teacher getSessionTeacher() {
		return sessionTeacher;
	}
	public void setSessionTeacher(Teacher sessionTeacher) {
		this.sessionTeacher = sessionTeacher;
	}
	public SyllabusService getSyllabusService() {
		return syllabusService;
	}
	public void setSyllabusService(SyllabusService syllabusService) {
		this.syllabusService = syllabusService;
	}
	public List<Course> getCourseList() {
		return courseList;
	}
	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}
	public List<Syllabus> getSyllabusList() {
		return syllabusList;
	}
	public void setSyllabusList(List<Syllabus> syllabusList) {
		this.syllabusList = syllabusList;
	}
	public Integer getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
	}
	public Teacher getTeacherEntity() {
		return teacherEntity;
	}
	public void setTeacherEntity(Teacher teacherEntity) {
		this.teacherEntity = teacherEntity;
	}
	public List<Teacher> getTeacherList() {
		return teacherList;
	}
	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
	public TeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	
	
	public String updateTeacher(){
		if(teacherEntity != null){
			teacherService.saveTeacher(teacherEntity);
			return queryAllTeacher();
		}else{
			return FAIL;
		}
	}
	
	public String queryAllTeacher(){
		teacherList = teacherService.queryAllTeacher();
		return "allTeacherInfo";
	}
	
	public String deleteTeacher(){
		if(teacherID!=null){
			Teacher th = new Teacher();
			th.setId(teacherID);
			teacherService.deleteTeacher(th);
			return queryAllTeacher();
		}else{
			return FAIL;
		}
	}
	
	public String queryTeacherObject(){
		if(teacherID!=null){
			teacherEntity = teacherService.queryTeacherObject(teacherID);
			return SUCCESS;
		}else{
			return FAIL;
		}
	}
	
	/**	
	 * 
	 * 查询教师自己授课 时间 地点 等信息
	 * <p> 教师编号 teaherNo 通过 session 获得
	 * 
	 * */
	public String listCourseByTeacherNo(){
		if(sessionTeacher != null){
			courseList = syllabusService.listCourseByTeacherNo(sessionTeacher.getNo());
			return SUCCESS;
		}else{
			return "repeatedID";
		}
	}
	/**
	 *	<p> 通过教师编号查询选择他课程的学生 
	 *	<p> 教师编号 teaherNo 通过 session 获得
	 **/
	public String listSyllabusAndStudentByTeacherhNo(){
		if(sessionTeacher != null){
			syllabusList = syllabusService.listSyllabusAndStudentByTeacherhNo(sessionTeacher.getNo());
			return SUCCESS;
		}else{
			return "repeatedID";
		}
	}
}
