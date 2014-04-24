<%@ page language="java"  pageEncoding="utf-8"%>
<html >
<head>
   <title>教务管理系统登录</title>
  <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#userNo").focus();
		$("#password").keydown(function(e){
			var curKey = e.which;
			if(curKey == 13){
			login();
		};
	});
	});
	function numberTest(){
	 	var reg = new RegExp("^[0-9]*$");
		if(!reg.test($("#userNo").val())){
			$("#userNo").val("");
			alert("用户ID必须是数字!");
		}
		return null;
	}
   function login(){
   		numberTest();
   		if($("#password").val()==""){
   			alert("请输入密码！");
   			$("#password").focus();
   			return null;
   		}
	   	$.ajax({
		  url: "login.action",
		  type: "POST",
		  data: {"userNo":$("#userNo").val(),"password":$("#password").val()},
		  dataType: "json",
		  success:function(data){
			if(data.code == 1){
				if(data.user == "student"){
				window.location="${pageContext.request.contextPath}/frame/studentDefault.action";
				}else if(data.user == "teacher"){
					window.location="${pageContext.request.contextPath}/frame/teacherDefault.action";
				}else if(data.user == "admin"){
					window.location="${pageContext.request.contextPath}/frame/adminDefault.action";
				}else{
					alert("无此用户类型！");
				}
			}else{
				alert("用户名或密码错误！");
				return;
			} 
		  }
	});
   }
</script>
</head>
<body bgcolor="#FFFFFF" style="margin: 0 auto;">

    <div>
        <center>
            <table id="__01" width="1361" height="648" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="9">
			<img src="images/login_01.png" width="1360" height="124" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="124" alt=""></td>
	</tr>
	<tr>
		<td rowspan="12">
			<img src="images/login_02.png" width="381" height="523" alt=""></td>
		<td colspan="7">
			<img src="images/login_01-04.png" width="598" height="118" alt=""></td>
		<td rowspan="12">
			<img src="images/login_04.png" width="381" height="523" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="118" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/login_01-06.png" width="120" height="1" alt=""></td>
		<td colspan="2" rowspan="4">
			<img src="images/login_06.png" width="179" height="53" alt=""></td>
		<td colspan="4">
			<img src="images/login_01-08.png" width="299" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td rowspan="10">
			<img src="images/login_08.png" width="120" height="404" alt=""></td>
		<td colspan="4">
			<img src="images/login_09.png" width="299" height="8" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td rowspan="7">
			<img src="images/login_10.png" width="10" height="165" alt="" /></td>
		<td>
			<input type="text" id="userNo" name="userNo" height="50px" onblur="numberTest();"/>
		</td>
		<td colspan="2" rowspan="7">
			<img src="images/login_12.png" width="126" height="165" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="35" alt=""></td>
	</tr>
	<tr>
		<td rowspan="3">
			<img src="images/login_13.png" width="163" height="18" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/login_14.png" width="179" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="3">
			<img src="images/login_15.png" width="179" height="53" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td>
            <input type="password" name="password" id="password"  />
			</td>
		<td>
			<img src="images/i.gif" width="1" height="37" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/login_17.png" width="163" height="75" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/login_18.png" width="179" height="67" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="67" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/login_19.png" width="1" height="231" alt=""></td>
		<td colspan="4">
            <input type="image" name="login" src="images/login_20.png" / onclick="login();">
            
			</td>
		<td rowspan="2">
			<img src="images/login_21.png" width="120" height="231" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="59" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="images/login_22.png" width="357" height="172" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="172" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/i.gif" width="381" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="120" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="178" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="10" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="163" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="6" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="120" height="1" alt=""></td>
		<td>
			<img src="images/i.gif" width="381" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
        </center>
  </div>
</body>
</html>
