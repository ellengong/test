<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息采集</title>

<link rel="stylesheet" href="dist/css/bootstrap.min.css">
<script src="dist/js/bootstrap.min.js"></script>
</head>
<body>
<h2 class="text-center btn-primary" style="height:64px;line-height:64px;margin:0px">文正学院校友信息采集</h2>
	<div class="container first-screen">
	<form class="center-block" style="width: 360px;margin-top:30px" action="" method="post">
		<div class="form-group">
			<label for="userName">姓名</label> <input
				type="text" class="form-control" id="userName" name="userName"
				placeholder="姓名" required="required">
		</div>
		<div class="form-group">
			<label for="phoneNumber">手机</label> <input
				type="text" class="form-control" id="phoneNumber" name="phoneNumber"
				placeholder="手机" required="required">
		</div>
		<div class="form-group">
			<label for="gradYear">毕业年份</label> <input
				type="number" class="form-control" id="gradYear" name="gradYear" min="2003" max="2019"
				placeholder="2008" required="required">
		</div>
		<div class="form-group">
			<label for="major">专业</label> <input
				type="text" class="form-control" id="major" name="major" 
				placeholder="专业" required="required">
		</div>
		<div class="form-group">
			
			<input type="radio" name="gender" value="male"  >男
			<input type="radio" name="gender" value="female" style="margin-left:35px" >女
		</div>
		
	<!--  	<div class="checkbox">
			<label>专业</label>
			<select name="major">
				<option value="1">计算机</option>
				<option value="2">会计</option>
				<option value="3">工商管理</option>
				<option value="4">机械</option>
			</select>
		</div> -->
		<div class="form-group">
			<label for="company">工作单位</label> <input
				type="text" class="form-control" id="company" name="company"
				placeholder="现工作单位" required="required">
		</div>
		<div class="form-group">
			<label for="job">职务</label> <input
				type="text" class="form-control" id="job" name="job"
				placeholder="职务" required="required">
		</div>
		
		<button type="submit"  class="btn btn-primary form-control">提交</button>
		
	</form>
	</div>
</body>
</html>