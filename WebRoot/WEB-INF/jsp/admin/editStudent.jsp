<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>编辑学生信息页面</title>
<style type="text/css">
.style {
	text-align: center
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.7.2.min.js"></script>
 <script type="text/javascript">
 	function validate(){
 	    if($("#stuName").val() == ""){
 	    	alert("请输入姓名!");
 	    	return null;
 	    }else{
 	    	$("#updateForm").submit();
 	    }
 	}    
</script>
	</head>

	<body>
		<center>
		<form id="updateForm" action="${pageContext.request.contextPath}/student/updateStudent.action" method="post">
			<table border="1px" width="400px" class="style"
				style="margin-top: 80px;">
				<tr>
					<td colspan="9" background="${pageContext.request.contextPath}/skin/images/frame/wbg.gif"
						style="height: 25px; text-align: center">
						<strong>该学生基本信息</strong>
					</td>
				</tr>
				<tr>
					<td>
						学号：
					</td>
					<td>
					<input type="text" value="<s:property value="studentEntity.no" />" readonly="readonly" name="studentEntity.no"/>
					<input type="hidden" value="<s:property value="studentEntity.id" />"  name="studentEntity.id"/>	
					</td>
				</tr>
				<tr>
					<td>
						姓名：
					</td>
					<td>
					<input type="text" id="stuName" value="<s:property value="studentEntity.name" />" name="studentEntity.name"/>
						
					</td>
				</tr>
				<tr>
					<td>
						性别：
					</td>
					<td>
						<select id="sex" name="studentEntity.sex" >
							<option selected="selected"><s:property value="studentEntity.sex" /></option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						家庭住址：
					</td>
					<td>
					<input type="text" value="<s:property value="studentEntity.address" />" name="studentEntity.addres"/>
						
					</td>
				</tr>
				<tr>
					<td>
						联系电话：
					</td>
					<td>
					<input type="text" value="<s:property value="studentEntity.phoneNo" />" name="studentEntity.phoneNo"/>
						
					</td>
				</tr>
				<tr>
					<td>
						邮箱：
					</td>
					<td>
					<input type="text" value="<s:property value="studentEntity.mail" />" name="newstudent.mail"/>
						
					</td>
				</tr>
				<tr>
					<td>
						班级：
					</td>
					<td>
					<input type="text" value="<s:property value="studentEntity.grade" />" name="studentEntity.grade"/>
						
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="button" value="提交" onclick="validate();"/>
					<input type="button" value="取消" onclick="window.history.go(-1)"/>
					</td>
				</tr>

			</table>
			</form>
		</center>
	</body>
</html>
