package com.classcourse.action;

import java.util.List;

import com.classcourse.common.Globals;
import com.classcourse.domain.Student;
import com.classcourse.domain.Teacher;
import com.classcourse.service.StudentService;
import com.classcourse.service.TeacherService;

public class LoginAction extends BaseAction{
	
	/**
	 * 登录action
	 */
	private static final long serialVersionUID = 20144151617L;
	
	private String userType;
	private Integer userNo;
	private String password;
	
	private StudentService studentService;
	private TeacherService TeacherService;
	
	public StudentService getStudentService() {
		return studentService;
	}
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	public TeacherService getTeacherService() {
		return TeacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		TeacherService = teacherService;
	}
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 *	登录入口 
	 **/
	public String login(){
		String currentUser = "";
		int code = 0;
		if(this.getSession().getAttribute(Globals.TEACHER) != null){
			this.getSession().removeAttribute(Globals.TEACHER);
		}
		if(this.getSession().getAttribute(Globals.STUDENT) != null){
			this.getSession().removeAttribute(Globals.STUDENT);
		}
		if(this.getSession().getAttribute(Globals.CURRENTUSER) != null){
			this.getSession().removeAttribute(Globals.CURRENTUSER);
		}
		if(password !=null && userNo !=null ){
			
			Student stud = studentService.findStudentByNo(userNo);
			if(stud == null){
				Teacher teah = TeacherService.findTeacherByNo(userNo);
				if(teah != null){
					if(teah.getLevel()!= null && teah.getLevel() == 1){
						currentUser = "admin";
						List<Teacher> allTeacherList = TeacherService.queryAllTeacher();
						this.getSession().setAttribute("allTeacherList", allTeacherList);
					}else{
						currentUser = "teacher";
					}
					
					Teacher teacher = TeacherService.checkTeacherLogin(userNo, password);
					if(teacher != null){
						code = 1;
						this.getSession().setAttribute(Globals.TEACHER, teacher);
						this.getSession().setAttribute(Globals.CURRENTUSER, teacher.getName());
					}
				}	
			}else{
				currentUser = "student";
				
				Student stu = studentService.checkStudentLogin(userNo,password);
				if(stu != null){
					code = 1;
					this.getSession().setAttribute(Globals.STUDENT, stu);
					this.getSession().setAttribute(Globals.CURRENTUSER, stu.getName());
				}
			}
			this.outJson(creatJson(currentUser, code));
			return null;
		}
		return "login";
	}
	/**
	 *	生成json串 前台接收 调用相应的jsp页面 
	 *	@param user {@value teacher student admin}
	 *  @param code {@value 0 登录失败   1 登录成功}
	 **/
	private String creatJson(String user,int code){
		return "{\"user\":\""+user+"\",\"code\":\""+code+"\"}";
	}
	
}
