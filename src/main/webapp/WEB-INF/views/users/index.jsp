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
<title>列表</title>
<%@ include file="/WEB-INF/views/layouts/common.jsp"%>

<script type="text/javascript">
	$(function(){
		$(".delete").click(function(){
			var href = $(this).attr("href");
			$("form").attr("action", href).submit();			
			return false;
		});
	})
</script>
</head>
<body>
	<form action="" method="POST">
		<input type="hidden" name="_method" value="DELETE"/>
	</form>
	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<h2>用戶列表</h2>
			</div>
			<div class="col-md-3">
				<a href="users/new" class="btn btn-primary btn-block">新建</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<c:if test="${!empty requestScope.users }">
					<c:forEach items="${requestScope.users }" var="user">
						<div>
							${ user.id }
							${ user.name }
							${ user.email }
							${ user.password }
						</div>
						<div>
							<a href="users/${user.id }/edit">编辑</a>
							<a href="users/${user.id}" class="delete btn btn-danger">删除</a>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>