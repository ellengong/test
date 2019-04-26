
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
<title>success</title>
<style>
a {
	text-decoration: none;
	color: #373F51;
}
a:hover {
	color: #E74B63;
}
</style>
</head>
<body>

<span class="glyphicon glyphicon-chevron-left"><a href="secbypage.do?currPage=1">返回</a></span>
<script type="text/javascript"
	src="${pageScope.basePath}jquery/jquery.js"></script>
<script type="text/javascript"
	src="${pageScope.basePath}js/bootstrap.min.js"></script>
<script type="text/javascript">
        window.onload=function(){
            alert("提交成功！");
        }
</script>


</body>
</html>