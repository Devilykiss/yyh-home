<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>课程增加</title>
<style type="text/css">
<!--
@import url("colors5.css");
.STYLE2 {
	font-size: xx-large;
	font-family: "宋体";
}
-->
</style>
 <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.7.2.min.js"></script>
 <script type="text/javascript">
 	function validate(){
 	    if($("#no").val() == ""){
 	    	alert("请输入课程编号!");
 	    	$("#no").focus();
 	    	return null;
 	    }
 	    if($("#name").val() == ""){
 	    	alert("请输入课程名!");
 	    	$("#name").focus();
 	    	return null;
 	    }
 		var reg = new RegExp("^[0-9]*$");
 		if($("#credit").val() == ""){
 	    	alert("请输入课程学分!");
 	    	$("#credit").focus();
 	    	return null;
 	    }
 		if(!reg.test($("#credit").val())){
			$("#credit").val("");
			alert("学分必须为数字!");
			$("#credit").focus();
			return null;
		}
		if(!reg.test($("#no").val())){
			$("#no").val("");
			alert("课程编号必须为数字!");
			$("#name").focus();
			return null;
		}else{
			$("#addForm").submit();
		}
 	}
 </script>

</head>

<body>
<div align="center"><span class="STYLE2">新增课程</span>
<form id="addForm" action="${pageContext.request.contextPath}/admin/addCourse.action" method="post">
  <table width="511" height="395" border="1">
    <tr>
      <td width="126"><font color="red">*</font>课程编号：</td>
      <td width="369"><input id="no" type="text" name="courseEntity.no"/></td>
    </tr>
    <tr>
      <td><font color="red">*</font>课程名称：</td>
      <td><input id="name" type="text" name="courseEntity.name"/></td>
    </tr>
    <tr>
      <td><font color="red">*</font>课程类型：</td>
      <td>				
      	<select width="50" name="courseEntity.type" >
			<option value="选">选</option>
			<option value="必">必</option>
		</select>
    </tr>
    <tr>
      <td>授课教师：</td>
      <td>
      	<select name="courseEntity.teacherID" >
      		<s:iterator value="#session.allTeacherList" var="allteacher"> 
      		<option value="<s:property value="#allteacher.id" />"><s:property value="#allteacher.name" /></option>
      		</s:iterator>
      	</select>
      </td>
    </tr>
    <tr>
      <td>课程简介：</td>
      <td><input id="info" type="text" name="courseEntity.info"/></td>
    </tr>
    <tr>
      <td><font color="red">*</font>学分：</td>
      <td><input id="credit" type="text" name="courseEntity.credit"/></td>
    </tr>
    <tr>
      <td>安排周次：</td>
      <td><input id="times" type="text" name="courseEntity.times"/></td>
    </tr>
    <tr>
      <td colspan="2">
        <div align="center">
          <input type="button" value="提交"  height="50px" onclick="validate();"/>      
          </div></td>
    </tr>
    </table>
    </form>
</div>
</body>
</html>
