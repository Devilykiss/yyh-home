<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<form id="addForm" action="${pageContext.request.contextPath}/admin/updateCourse.action" method="post">
  <table width="511" height="395" border="1">
    <tr>
      <td width="126"><font color="red">*</font>课程编号：</td>
      <td width="369">
      <input id="no" type="text" name="courseEntity.no" value="<s:property value="courseEntity.no" />" readonly="readonly"/>
      <input id="cid" type="hidden" name="courseEntity.id" value="<s:property value="courseEntity.id"/>"/>
      </td>
    </tr>
    <tr>
      <td><font color="red">*</font>课程名称：</td>
      <td><input id="name" type="text" name="courseEntity.name" value="<s:property value="courseEntity.name" />"/></td>
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
      <td><input id="no" type="text" name="courseEntity.teacherID" value="<s:property value="courseEntity.teacherID" />"/></td>
    </tr> 
    <tr>
      <td>课程简介：</td>
      <td><input id="info" type="text" name="courseEntity.info" value="<s:property value="courseEntity.info" />"/></td>
    </tr>
    <tr>
      <td><font color="red">*</font>学分：</td>
      <td><input id="credit" type="text" name="courseEntity.credit"  value="<s:property value="courseEntity.credit" />"/></td>
    </tr>
    <tr>
      <td>安排周次：</td>
      <td><input id="times" type="text" value="<s:property value="courseEntity.times" />" name="courseEntity.times"/></td>
    </tr>
    <tr>
      <td colspan="2">
        <div align="center">
         			<input type="button" value="提交" onclick="validate();"/>
					<input type="button" value="取消" onclick="window.history.go(-1)"/>   
          </div></td>
    </tr>
    </table>
   </form>
</div>
</body>
</html>
