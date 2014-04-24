<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.7.2.min.js"></script>
 <script type="text/javascript">
 	function validate(){
 	    if($("#thName").val() == ""){
 	    	alert("请输入姓名!");
 	    	return null;
 	    }else{
 	    	$("#updateForm").submit();
 	    }
 	}    
 </script>
  </head>
  
  <body>
    <div style="padding-top: 100px;">
  <center>
     <form id="updateForm" action="${pageContext.request.contextPath}/teacher/updateTeacher.action" method="post">
					<table border="1px" width="300px">
						<tr>
							<td>
								学工号：
							</td>
							<td>
								<input type="text" value="<s:property value="teacherEntity.no" />" readonly="readonly" name="teacherEntity.no"/>
								<input type="hidden" value="<s:property value="teacherEntity.id" />"  name="teacherEntity.id"/>	
							</td>
						</tr>
						<tr>
							<td>
								姓名：
							</td>
							<td>
								<input id="thName" type="text" value="<s:property value="teacherEntity.name" />"
									name="teacherEntity.name" />
							</td>
						</tr>
						<tr>
							<td>
								手机：
							</td>
							<td>
								<input type="text" value="<s:property value="teacherEntity.phoneNo" />"
									name="teacherEntity.phoneNo" />
							</td>
						</tr>
						<tr>
							<td>
								邮箱：
							</td>
							<td>
								<input type="text" value="<s:property value="teacherEntity.mail" />"
									name="teacherEntity.mail" />
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="提交" onclick="validate();"/>
								<input type="button" value="取消" onclick="window.history.go(-1)"/>
							</td>
						</tr>
					</table>
				</form>
     </center>
     </div>
  </body>
</html>
