<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'displayTeachers.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <table border="1'">
      <tr>
         <td>姓名</td>
         <td>性别</td>
         <td>个人照片</td>
         <td>出生日期</td>
         <td>学院</td>
         <td>专业</td>
         <td>班级</td>
         <td>qq</td>
         <td>手机号码</td>
         <td>住址</td>
         <td>自我介绍</td>
         <td>工作</td>
      </tr>
        <c:forEach items='${teachers}' var="teacher">
           <tr>
              <td>${teacher.name} </td>
              <td>${teacher.sex}</td>
              <td><img src="${teacher.img}" width="80px" height="80px"></td>
              <td>${teacher.date}</td>
              <td>${teacher.college}</td>
              <td>${teacher.major}</td>
              <td>${teacher.grade}</td>
              <td>${teacher.qq}</td>
              <td>${teacher.phone}</td>
              <td>${teacher.address}</td>
              <td>${teacher.introduction}</td>
              <td>${teacher.job}</td>
           </tr>
			            
	    </c:forEach>    
    </table>  
  </body>
</html>
