<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>学生信息管理页面</title>
		<style type="text/css">
        .style {
	      text-align: center
        }
        </style>
	</head>

	<body>
		<center>
			<table border="0.5px" width="900px" class="style"
				style="margin-top: 50px;">
				<tr>
					<td colspan="9" background="${pageContext.request.contextPath}/skin/images/frame/wbg.gif"
						style="height: 25px; text-align: center">
						<strong>学生信息列表</strong>
					</td>
				</tr>
				<tr bgcolor="lightgreen">
					<td>
						学号
					</td>
					<td>
						姓名
					</td>
					<td>
						性别
					</td>
					<td>
						家庭住址
					</td>
					<td>
						联系电话
					</td>
					<td>
						邮箱
					</td>
					<td>
					          班级 
					</td>
					<td>
					          操作 
					</td>
				</tr>
				<s:iterator value="studentList" var="allstudent">
					<tr>
						<td align="center">
							<s:property value="#allstudent.no" />
						</td>
						<td align="center">
							<s:property value="#allstudent.name" />
						</td>
						<td align="center">
							<s:property value="#allstudent.sex" />
						</td>
						<td align="center">
							<s:property value="#allstudent.address" />
						</td>
						<td align="center">
							<s:property value="#allstudent.phoneNo" />
						</td>
						<td align="center">
							<s:property value="#allstudent.mail" />
						</td>
						<td align="center">
							<s:property value="#allstudent.grade" />
						</td>
						<td align="center">
							<a href='${pageContext.request.contextPath}/student/deleteStudent.action?studentID=<s:property value="#allstudent.id"/>'onclick="return confirm('警告：删除该学生会同时删除该学生的选课信息！真的要删除吗？')" >删除</a>
							<a href='${pageContext.request.contextPath}/student/queryStudentObject.action?studentID=<s:property value="#allstudent.id"/>'>编辑</a>
						</td>
					</tr>
				</s:iterator>
			</table>
		</center>
	</body>
</html>
