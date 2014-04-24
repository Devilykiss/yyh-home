<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>学生个人信息</title>
	</head>

	<body>
		<div style="padding-top: 100px;">
			<center>
				<form action="${pageContext.request.contextPath}/student/update.action" method="post">
					<table border="1px" width="300px">
						<tr>
							<td>
								学号：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.no}" name="studentEntity.no" readonly="readonly"/>
								
							</td>
						</tr>
						<tr>
							<td>
								姓名：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.name}"
									name="studentEntity.name" readonly="readonly"/>
							</td>
						</tr>
						<tr>
							<td>
								性别：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.sex}"
									name="studentEntity.sex" />
							</td>
						</tr>
						<tr>
							<td>
								家庭住址：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.address}"
									name="studentEntity.address" />
							</td>
						</tr>
						<tr>
							<td>
								联系电话：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.phoneNo}"
									name="studentEntity.phoneNo" />
							</td>
						</tr>
						<tr>
							<td>
								班级：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.grade}"
									name="studentEntity.grade" readonly="readonly"/>
							</td>
						</tr>
						
						<tr>
							<td>
								邮箱：
							</td>
							<td>
								<input type="text" value="${sessionScope.student.mail}"
									name="studentEntity.mail" />
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="更新" />
							</td>
						</tr>
					</table>
				</form>
			</center>
		</div>
	</body>
</html>
