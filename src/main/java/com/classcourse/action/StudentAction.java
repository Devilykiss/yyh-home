package com.classcourse.action;

import java.util.List;

import com.classcourse.common.Globals;
import com.classcourse.domain.Student;
import com.classcourse.service.StudentService;
import com.classcourse.service.SyllabusService;

public class StudentAction extends BaseAction {
	
	/**
	 * 学生操作action
	 */
	private static final long serialVersionUID = 2014422855L;
	private StudentService studentService;
	private Student studentEntity;
	private SyllabusService syllabusService;
	
	private List<Student> studentList;
	private Integer studentID;
	
	
	public SyllabusService getSyllabusService() {
		return syllabusService;
	}
	public void setSyllabusService(SyllabusService syllabusService) {
		this.syllabusService = syllabusService;
	}
	public Integer getStudentID() {
		return studentID;
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	public List<Student> getStudentList() {
		return studentList;
	}
	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	public Student getStudentEntity() {
		return studentEntity;
	}
	public void setStudentEntity(Student studentEntity) {
		this.studentEntity = studentEntity;
	}
	public StudentService getStudentService() {
		return studentService;
	}
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	
	public String updateStudent(){
		if(studentEntity != null){
			studentService.saveStudent(studentEntity);
			return queryAllStudent();
		}else{
			return FAIL;
		}
	}
	
	public String queryAllStudent(){
		studentList = studentService.queryAllStudents();
		return "allStudentInfo";
	}
	
	public String deleteStudent(){
		if(studentID!=null){
			Student stu = new Student();
			stu.setId(studentID);
			studentService.deleteStudent(stu);
			return queryAllStudent();
		}else{
			return FAIL;
		}
	}
	
	public String queryStudentObject(){
		if(studentID!=null){
			studentEntity = studentService.queryStudentObject(studentID);
			return SUCCESS;
		}else{
			return FAIL;
		}
	}
	/**
	 *	通过学号查询个人课程表
	 *  <p>学号  studentNo 通过 session 获得
	 **/
	public String listSyllabusByStudentNo(){
		if(getSession().getAttribute(Globals.STUDENT)!= null){
			syllabusList = 
			return SUCCESS;
		}else{
			return "repeatedID";
		}
	}
}
