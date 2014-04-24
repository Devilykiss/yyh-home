<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>教师个人信息</title>
	</head>

	<body>
		<div style="padding-top: 100px;">
			<center>
				<form action="${pageContext.request.contextPath}/teacher/update.action" method="post">
					<table border="1px" width="300px">
						<tr>
							<td>
								学工号：
							</td>
							<td>
								<input type="text" value="${sessionScope.teacher.no}" name="teacherEntity.no" readonly="readonly"/>
								
							</td>
						</tr>
						<tr>
							<td>
								姓名：
							</td>
							<td>
								<input type="text" value="${sessionScope.teacher.name}"
									name="teacherEntity.name" readonly="readonly"/>
							</td>
						</tr>
						<tr>
							<td>
								性别：
							</td>
							<td>
								<input type="text" value="${sessionScope.teacher.sex}"
									name="teacherEntity.sex" />
							</td>
						</tr>
						<tr>
							<td>
								联系电话：
							</td>
							<td>
								<input type="text" value="${sessionScope.teacher.phoneNo}"
									name="teacherEntity.phoneNo" />
							</td>
						</tr>
						<tr>
							<td>
								邮箱：
							</td>
							<td>
								<input type="text" value="${sessionScope.teacher.mail}"
									name="teacherEntity.mail" />
							</td>
						</tr>
					</table>
				</form>
			</center>
		</div>
	</body>
</html>
