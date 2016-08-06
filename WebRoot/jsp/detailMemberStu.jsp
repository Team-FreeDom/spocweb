<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>信息展示</title>
<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>

<body>
<div class="container table-responsive">
    <table class="table table-bordered">
        <tr>
            <td>姓名</td>
            <td>${member.name}</td>
            <td>性别</td>
            <td>${member.sex}</td>
            <td>出身</td>
            <td>${member.date}</td>
            <td rowspan="3" width="140px">
            	<img src="${member.img}" width="120px" />
            </td>
        </tr>
        <tr>
            <td>学院</td>
            <td>${member.college}</td>
            <td>年级</td>
            <td>${member.grade}</td>
            <td>专业</td>
            <td>${member.major}</td>
        </tr>
        <tr>
            <td>QQ</td>
            <td>${member.qq}</td>
            <td>电话</td>
            <td>${member.phone}</td>
            <td>组别</td>
            <td>${group }</td>
        </tr>
        <tr>
            <td>就业信息</td>
            <td colspan="6">${member.job}</td>
        </tr>
        <tr>
            <td>地址</td>
            <td colspan="6">${member.address}</td>
        </tr>
        <tr height="240px">
            <td style="line-height:240px;">介绍</td>
            <td colspan="6">${member.introduction}</td>
        </tr>
    </table>
</div>
</body>
</html>

