package com.classcourse.action;

import java.util.List;

import com.classcourse.domain.Course;
import com.classcourse.domain.Student;
import com.classcourse.domain.Syllabus;
import com.classcourse.domain.Teacher;
import com.classcourse.service.AdminService;
import com.classcourse.service.StudentService;
import com.classcourse.service.SyllabusService;
import com.classcourse.service.TeacherService;

public class AdminAction extends BaseAction{
	/**
	 * 管理员操作action
	 */
	private static final long serialVersionUID = 20144211315L;
	private AdminService adminService;
	private TeacherService teacherService;
	private StudentService studentService;
	private SyllabusService syllabusService;
	
	private Course courseEntity;
	private Teacher teacherEntity;
	private Student studentEntity;
	
	private List<Course> courseList;
	private List<Syllabus> syllabusList;
	private Integer courseID;
	private Integer userID;
	
	
	
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public SyllabusService getSyllabusService() {
		return syllabusService;
	}
	public void setSyllabusService(SyllabusService syllabusService) {
		this.syllabusService = syllabusService;
	}
	public Course getCourseEntity() {
		return courseEntity;
	}
	public void setCourseEntity(Course courseEntity) {
		this.courseEntity = courseEntity;
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
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public TeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	public StudentService getStudentService() {
		return studentService;
	}
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
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
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	
	
	public String addStudent(){
		if(studentEntity != null){
			if(studentService.findStudentByNo(studentEntity.getNo())==null 
				&& teacherService.findTeacherByNo(studentEntity.getNo())==null){
				studentService.saveStudent(studentEntity);
				return SUCCESS;
			}
			return "repeatedID";
		}
		return FAIL;
	}
	
	public String addTeacher(){
		if(teacherEntity != null){
			if(studentService.findStudentByNo(teacherEntity.getNo())==null 
					&& teacherService.findTeacherByNo(teacherEntity.getNo())==null){
				teacherService.saveTeacher(teacherEntity);
				return SUCCESS;
			}
			return "repeatedID";
		}
		return FAIL;
	}
	
	/**
	 *	通过管理员查询公共的课程表
	 *	<p> 只有一个管理员
	 *  <p> 通过teacher表level查询
	 **/
	public String listSyllabusByAdminNo(){
		if(userID != null){
			syllabusList = syllabusService.listSyllabusByUserID(userID);
			return SUCCESS;
		}else{
			return FAIL;
		}
	}
	
	
	public String queryCourseObject(){
		if(courseID != null){
			courseEntity=syllabusService.queryCourseObject(courseID);
			return SUCCESS;
		}else{
			return FAIL;
		}
	}
	
	public String queryAllCourse(){
		courseList = syllabusService.queryAllCourse();
		return "allCourseInfo";
	}
	
	public String addCourse(){
		if(courseEntity != null){
			syllabusService.saveCourse(courseEntity);
			return SUCCESS;
		}else{
			return FAIL;
		}
	}
	
	public String deleteCourse(){
		if(courseID != null){
			Course cs = new Course();
			cs.setId(courseID);
			syllabusService.deleteCourse(cs);
			return queryAllCourse();
		}else{
			return FAIL;
		}
	}
	
	public String updateCourse(){
		if(courseEntity != null){
			syllabusService.saveCourse(courseEntity);
			return queryAllCourse();
		}else{
			return FAIL;
		}
	}
	
	
	
	
}
