<%@ page language="java"  pageEncoding="utf-8"%>
<html>
<head>
<title>menu</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/skin/css/menu.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language='javascript'>    var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/skin/js/frame/menu.js"></script>
<base target="main" />
</head>
<body target="main">
<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
  <tr>
    <td style='padding-left:3px;padding-top:8px' valign="top">
	<!-- Item 1 Strat -->
      <dl class='bitem'>
        <dt onclick='showHide("items1_1")'><b>个人信息</b></dt>
        <dd style='display:block' class='sitem' id='items1_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/teacher/n_personalInfo.action' target='main'>查看个人信息</a></div>
                <div class='flrct'> <img src='${pageContext.request.contextPath}/skin/images/frame/gtk-sadd.png' alt='个人信息' title='个人信息'/> </div>
              </div>
            </li>
          </ul>
        </dd>
      </dl>
      <br />
      <!-- Item 1 End -->
      <dl class='bitem'>
        <dt onclick='showHide("items2_1")'><b>选课系统</b></dt>
        <dd style='display:block' class='sitem' id='items2_1'>
          <ul class='sitemu'>
            <li><a href="${pageContext.request.contextPath}/sb/listCourseAndStudentByTeacherhNo.action" target='main'>选课学生</a></li>
          </ul>
        </dd>
      </dl>
      <br />
      <dl class='bitem'>
        <dt onclick='showHide("items3_1")'><b>授课管理</b></dt>
        <dd style='display:block' class='sitem' id='items3_1'>
          <ul class='sitemu'>
            <li><a href="${pageContext.request.contextPath}/sb/listCourseAndStudentByTeacherhNo.action" target='main'>查询授课</a></li>
          </ul>
        </dd>
      </dl>
	  </td>
  </tr>
</table>
</body>
</html>