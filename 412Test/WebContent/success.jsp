
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。 
	pageContext.setAttribute("basePath", basePath);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">

<link rel="stylesheet" href="${pageScope.basePath}dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageScope.basePath}jquery/jquery.js"></script>
<script type="text/javascript"
	src="${pageScope.basePath}js/bootstrap.min.js"></script>
<script type="text/javascript">
        //window.onload=function(){
          //  alert("感谢您的信息填写，提交成功！");
        //}
</script>

<title>信息提交成功</title>

</head>
<body>

<form class="center-block" style="width: 360px;margin-top:30px" action="" method="post">

<div class="form-group">
			<img src="${pageScope.basePath}images/happy.png" class="img-rounded">
			<h3> 信息提交成功！感谢您的参与!</h3>
</div>

</form>
</body>
</html>