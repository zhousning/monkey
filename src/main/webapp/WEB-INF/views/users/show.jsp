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
<title>信息详情</title>
<%@ include file="/WEB-INF/views/layouts/common.jsp" %>
</head>
<body>
<a href="users" class="btn btn-primary">返回</a>
<a href="users/${requestScope.user.id }/edit" class="btn btn-info">编辑</a>
${requestScope.user.name }
${requestScope.user.email }
${requestScope.user.password }
</body>
</html>