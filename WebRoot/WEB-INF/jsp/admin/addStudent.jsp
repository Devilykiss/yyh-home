<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加学生页面</title>
<style type="text/css">
.style {
	text-align: center
}
</style>
 <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.7.2.min.js"></script>
 <script type="text/javascript">
 	function validate(){
 	    if($("#stuNo").val() == ""){
 	    	alert("请输入学号!");
 	    	return null;
 	    }
 	    if($("#stuName").val() == ""){
 	    	alert("请输入姓名!");
 	    	return null;
 	    }
 		var reg = new RegExp("^[0-9]*$");
		if(!reg.test($("#stuNo").val())){
			$("#userNo").val("");
			alert("学号必须为数字!");
			return null;
		}else{
			$("#addForm").submit();
		}
 	}
 </script>
  </head>
  
  <body>
   <center> 
		<form id="addForm" name="addForm" action="${pageContext.request.contextPath}/admin/addStudent.action" method="post">
			<table border="1px" width="400px" class="style"
				style="margin-top: 80px;">
				<tr>
					<td colspan="9" background="${pageContext.request.contextPath}/skin/images/frame/wbg.gif"
						style="height: 25px; text-align: center">
						<strong>添加学生</strong>
					</td>
				</tr>
				<tr>
					<td>
						<font color="red">*</font>学号：
					</td>
					<td>
					<input type="text" id="stuNo"  name="studentEntity.no"/>
						
					</td>
				</tr>
				<tr>
					<td>
						<font color="red">*</font>姓名：
					</td>
					<td>
					<input type="text"  id="stuName" name="studentEntity.name"/>
						
					</td>
				</tr>
				<tr>
					<td>
						密码：
					</td>
					<td >
						<input align="middle"  type="text" readonly="readonly"
							title="初始密码默认 111"  name="studentEntity.password" value="111"/>
					</td>
				</tr>
				<tr>
					<td>
						性别：
					</td>
					<td>
						<select width="50" name="studentEntity.sex" >
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
					<input type="text" name="studentEntity.address"/>
						
					</td>
				</tr>
				<tr>
					<td>
						联系电话：
					</td>
					<td>
					<input type="text" name="studentEntity.phoneNo"/>
						
					</td>
				</tr>
				<tr>
					<td>
						邮箱：
					</td>
					<td>
					<input type="text" name="studentEntity.mail"/>
						
					</td>
				</tr>
				<tr>
					<td>
						班级：
					</td>
					<td>
					<input type="text" name="studentEntity.grade"/>
						
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="button" value="提交" onclick="validate();"/>
					</td>
				</tr>
			</table>
			</form>
		</center>
  </body>
</html>
