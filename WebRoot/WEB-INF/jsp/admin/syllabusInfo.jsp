<%@ page language="java" import="java.util.*"   pageEncoding="utf-8"%>
<%@ page import="com.classcourse.domain.Syllabus" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
.STYLE3 {
	font-size: xx-large;
	font-family: "宋体";
}
.STYLE4 {font-size: x-large}
-->
</style>
</head>

<body>
　　　　　　　　　　　　　　　　　　　　　
<h2 align="center"><span class="STYLE3">课 程 表</span></br>
  </br>
  </br></h2>
<div align="center">
<table width="999" height="516" border="1" bordercolor="#0099CC">
    <tr>
      <td colspan="2">&nbsp;</td>
      <td colspan="2">星期一</td>
   	  <td colspan="2">星期二</td>
      <td colspan="2">星期三</td>
      <td colspan="2">星期四</td>
      <td colspan="2">星期五</td>
    </tr>
    <tr>
      <td width="80" rowspan="4"><div align="center"><span class="STYLE4">上 午</span></div></td>
      <td width="83" rowspan="2"><p align="center">1-2节</p>
      <p align="center">(8:00-10:00)</p></td>
      <%! List<Syllabus> syllabusList;
      %>
      <%
      syllabusList = (List<Syllabus>)request.getAttribute("syllabusList");
      if(syllabusList != null && syllabusList.size()>0){
      		for(int i=0;i<syllabusList.size();i++){
      			if((int)syllabusList.get(i).getLessonNumber() == 1){
      				int weekly = (int)syllabusList.get(i).getWeekly();
      				if(weekly != 0 ){
      				%>
      					<td width="130" height="54">
      						<%if(syllabusList.get(i).getCourseEntity()!=null){ %>
      						<%=syllabusList.get(i).getCourseEntity().getName() %>
      						<font color="red">*</font><%=syllabusList.get(i).getCourseEntity().getType()%>
      						<%}%>
      					</td>
      					<td width="22" rowspan="2"><div align="center">
      						<%if(syllabusList.get(i).getCourseEntity().getTeacherEntity()!=null){ %>
      						<%=syllabusList.get(i).getCourseEntity().getTeacherEntity().getName() %>
      						<%}%>
      						</div>
      					</td>
      				<%}else{%>
      					<td width="130" height="54">&nbsp;</td>
      					<td width="22" rowspan="2"><div align="center">&nbsp;</div></td>
       <%}}}}%> 
      <!--
      <s:iterator value="syllabusList" var="sbList">
	      <td width="130" height="54"><s:property value="#sbList.courseEntity.name"/> </td>
	      <td width="22" rowspan="2"><div align="center"><s:property value="#sbList.courseEntity.teacherEntity.name"/></div></td>
	   </s:iterator>
	    </tr>
    <tr>
	      <s:iterator value="syllabusList" var="sbList">
      	  <td><s:property value="#sbList.courseEntity.classroomno"/></td>
	   </s:iterator>
    -->
    </tr>
    <tr>
     <%if(syllabusList != null && syllabusList.size()>0){
      		for(int i=0;i<syllabusList.size();i++){
      			if((int)syllabusList.get(i).getLessonNumber() == 1){
      				int weekly = (int)syllabusList.get(i).getWeekly();
      				if(weekly != 0 ){
   		 if(weekly != 0 && syllabusList.get(i).getCourseEntity()!=null){%>
      	  <td><%=syllabusList.get(i).getCourseEntity().getClassroomno() %></td>
      	  <%}else{%>
      	  	<td>&nbsp;</td>
	      <%}}}}} %>
    </tr>
   
    <tr>
      <td rowspan="2"><p align="center">3-4节</p>
      <p align="center">(11:10-12:00)</p></td>
      <td width="130" height="59">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="4"><div align="center"><span class="STYLE4">下 午</span></div></td>
      <td rowspan="2"><p align="center">5-6节</p>
      <p align="center">(14:00-16:00)</p></td>
      <td width="130" height="81">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td width="130">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="2"><p align="center">7-8节</p>
      <p align="center">(16:10-18:00)</p></td>
      <td height="75">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td>&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td>&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td>&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
      <td>&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
