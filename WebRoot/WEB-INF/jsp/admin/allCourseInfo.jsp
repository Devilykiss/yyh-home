<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>课程信息页面</title>
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
						<strong>课程信息列表</strong>
					</td>
				</tr>
				<tr bgcolor="lightgreen">
					<td>
						课程号
					</td>
					<td>
						课程名
					</td>
					<td>
						课程类型
					</td>
					<td>
						授课教师
					</td>
					<td>
						课程简介
					</td>
					<td>
						学分
					</td>
					<td>
						学时
					</td>
					
					<td>
					          操作 
					</td>
				</tr>
				<s:iterator value="courseList" var="allcourse">
					<tr>
						<td align="center">
							<s:property value="#allcourse.no" />
						</td>
						<td align="center">
							<s:property value="#allcourse.name" />
						</td>
						<td align="center">
							<s:property value="#allcourse.type" />
						</td>
						<td align="center">
							<s:property value="#allcourse.teacherEntity.name" />
						</td>
						<td align="center">
							<s:property value="#allcourse.info" />
						</td>
						<td align="center">
							<s:property value="#allcourse.credit" />
						</td>
						<td align="center">
							<s:property value="#allcourse.times" />
						</td>		
						<td align="center">
							<a href='${pageContext.request.contextPath}/admin/deleteCourse.action?courseID=<s:property value="#allcourse.id"/>' onclick="return confirm('警告：真的要删除吗？')">删除</a>
							<a href='${pageContext.request.contextPath}/admin/queryCourseObject.action?courseID=<s:property value="#allcourse.id"/>'>编辑</a>
						</td>
					</tr>
				</s:iterator>
			</table>
		</center>
  </body>
</html>
