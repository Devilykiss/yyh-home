<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>教师信息管理页面</title>
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
						<strong>教师信息列表</strong>
					</td>
				</tr>
				<tr bgcolor="lightgreen">
					<td>
						学工号
					</td>
					<td>
						姓名
					</td>
					<td>
						性别
					</td>
					<td>
						联系电话
					</td>
					<td>
						邮箱
					</td>
					<td>
					          操作 
					</td>
				</tr>
				<s:iterator value="teacherList" var="allteacher">
					<tr>
						<td align="center">
							<s:property value="#allteacher.no" />
						</td>
						<td align="center">
							<s:property value="#allteacher.name" />
						</td>
						<td align="center">
							<s:property value="#allteacher.sex" />
						</td>
						<td align="center">
							<s:property value="#allteacher.phoneNo" />
						</td>
						<td align="center">
							<s:property value="#allteacher.mail" />
						</td>
						<td align="center">
							<a href='${pageContext.request.contextPath}/teacher/deleteTeacher.action?teacherID=<s:property value="#allteacher.id"/>' onclick="return confirm('警告：删除该教师会同时删除该教师的课程信息！真的要删除吗？')">删除</a>
							<a href='${pageContext.request.contextPath}/teacher/queryTeacherObject.action?teacherID=<s:property value="#allteacher.id"/>'>编辑</a>
						</td>
					</tr>
				</s:iterator>
			</table>
		</center>
	</body>
</html>
