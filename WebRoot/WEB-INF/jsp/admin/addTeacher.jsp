<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.7.2.min.js"></script>
   <script type="text/javascript">
 	function validate(){
 	    if($("#teacherNo").val() == ""){
 	    	alert("请输入学号!");
 	    	return null;
 	    }
 	    if($("#teacherName").val() == ""){
 	    	alert("请输入姓名!");
 	    	return null;
 	    }
 		var reg = new RegExp("^[0-9]*$");
		if(!reg.test($("#teacherNo").val())){
			$("#teacherNo").val("");
			alert("学号必须为数字!");
			return null;
		}else{
			$("#addForm").submit();
		}
 	}
 </script>
  </head>
  
  <body>
     <div style="padding-top: 100px;">
  <center>
     <form id="addForm" action="${pageContext.request.contextPath}/admin/addTeacher.action" method="post">
					<table border="1px" width="300px">
						<tr>
							<td>
								<font color="red">*</font>学工号：
							</td>
							<td>
								<input id="teacherNo" type="text" 
									name="teacherEntity.no" />
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>姓名：
							</td>
							<td>
								<input id="teacherName" type="text" 
									name="teacherEntity.name" />
							</td>
						</tr>
						<tr>
							<td>
								密码：
							</td>
							<td>
								<input  align="middle" type="text" readonly="readonly" 
									title="初始密码默认 111" name="teacherEntity.password" value="111"/>
							</td>
						</tr>
						<tr>
							<td>
								性别：
							</td>
							<td>
								<select width="50" name="teacherEntity.sex" >
									<option value="男">男</option>
									<option value="女">女</option>
								</select>
								</td>
						</tr>
						<tr>
							<td>
								手机：
							</td>
							<td>
								<input type="text" 
									name="teacherEntity.phoneNo" />
							</td>
						</tr>
						<tr>
							<td>
								邮箱：
							</td>
							<td>
							<input type="text" name="teacherEntity.mail"/>
								
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="提交" onclick="validate();"/>
								<input type="reset"" value="重置" />
							</td>
						</tr>
					</table>
				</form>
     </center>
     </div>
  </body>
</html>
