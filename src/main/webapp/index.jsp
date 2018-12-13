<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Index</title>
<%@ include file="/WEB-INF/views/layouts/common.jsp"%>
</head>
<body>

<a href="users" class="btn btn-primary">用戶列表</a>
<a href="users/sign_in">登录</a>
<a href="users/sign_up">注册</a>
</body>
</html>