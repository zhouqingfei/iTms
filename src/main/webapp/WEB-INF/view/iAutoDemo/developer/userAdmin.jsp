<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>用户管理</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/bower_components/iAutoDemo/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bower_components/iAutoDemo/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bower_components/iAutoDemo/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bower_components/iAutoDemo/js/addUserTmp.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/iAutoDemo/js/bootstrap.js"></script>
	<style>
		.container {
			width: 90%;
			margin-left: 200px;
			margin-top: 30px;
		}
		
		.table {
			border: 2px;
		}
		
		.table th, .table td, .table caption {
			text-align: center;
			vertical-align: middle !important;
		}
		
		.table th {
			font-size: 15px;
		}
		
		.table tr {
			width: 200px;
		}
		
		.table td {
			font-size: 13px;
		}
		
		.table td select {
			width: 100%;
			height: 100%;
		}
		
		.ul li a {
			background-color: #31B0D5;
		}
		
		.table tbody tr td {
			padding: 0px 0px 0px 0px;
			height: 30px;
		}
		
		.errorClass {
			color: #f40000;
			font-size: 10pt;
			position: absolute;
			top: 5px;
			right: 10px;
		}
		
		.inputDivClass {
			position: relative;
			margin-left: 2px;
		}
		
		.inputClass {
			height: 30px;
			border: none;
			width: 100%;
			padding-left: 10px;
		}
	</style>
	<script>  
				$(document).ready(function(){  
				   $("#roleIds").val("${user.roleIds[0]}");  
 
				   
				});
	</script>			
</head>

<body>
	<jsp:include page="top.jsp" flush="true" />

	<div class="view-body">
		<div class="container">
			<form class="form-inline" id="addUserForm">	
				<table class="table table-striped table-bordered table-hover">
					<caption style="color: black; font-size: 23px; font-family: LiSu">用户信息</caption>
					<tr>
						<th width="120px">用户名</th>
						<td colspan="2">
							<div class="inputDivClass">
								<input class="inputClass" name="userId" id="userId" type=text value="${user.userId}" disabled
									placeholder="&nbsp请输入用户名......" /><label
									class="errorClass" id="userIdError" ></label>
							</div>
						</td>
					</tr>
					<tr>	
						<th width="120px">公司电邮</th>
						<td colspan="2">
							<div class="inputDivClass">
								<input class="inputClass" name="email" id="email" type=text value="${user.email}"
									placeholder="&nbsp请输入公司电邮......" /><label
									class="errorClass" id="emailError"></label>
							</div>
						</td>
						<tr>
						
						<th width="120px">手机号</th>
						<td colspan="2">
							<div class="inputDivClass">
								<input class="inputClass" name="phone" id="phone" type=text value="${user.phone}"
									placeholder="&nbsp请输入手机号......" /><label
									class="errorClass" id="phoneError"></label>
							</div>
						</td>
						</tr>
						
						<tr>
						
						<th width="120px">QQ号</th>
						<td colspan="2">
							<div class="inputDivClass">
								<input class="inputClass" name="qq" id="qq" type=text value="${user.qq}"
									placeholder="&nbsp请输入QQ号......" /><label
									class="errorClass" id="qqError"></label>
							</div>
						</td>
						</tr>
						<tr>
						
						<th width="120px">微信号</th>
						<td colspan="2">
							<div class="inputDivClass">
								<input class="inputClass" name="weChat" id="weChat" type=text value="${user.weChat}"
									placeholder="&nbsp请输入微信号......" /><label
									class="errorClass" id="weChatError"></label>
							</div>
						</td>
						</tr>
						
						<tr>
						
						<th width="120px">账号</th>
						<td colspan="2">
							<div class="inputDivClass">
								<input class="inputClass" name="loginId" id="loginId" type=text value="${user.loginId}"
									placeholder="&nbsp请输入账号......" />
							</div>
						</td>
						</tr>
						
						<tr>
						<th>权限</th>
						<td colspan="2">
							<div class="inputDivClass">
								<select class="inputClass" name="roleIds" id="roleIds"
									style="width: 100%; height: 30px;">
									<option value="0">==请选择==</option>
									<option value="1">admin</option>
									<option value="2">tester</option>
									<option value="3">developer</option>
									<option value="4">leader</option>
								</select> <label class="errorClass" id="roleIdsError"></label>
							</div>
						</td>
					</tr>
					</tr>

					

				</table>
			
				<input type="submit" value="提交修改" class="btn btn-large btn-primary"
					style="position: absolute; right: 20px; top: 170px;">
				</input>
			</form>
			<input hidden id="path" value="${pageContext.request.contextPath}" />
			<a href="${pageContext.request.contextPath}/userAdminDeveloper.do/updatePassword"
				class="btn btn-large btn-primary"
				style="position: absolute; right: 20px; top: 220px;">修改密码</a>
			<a href="${pageContext.request.contextPath}"
				class="btn btn-large btn-primary"
				style="position: absolute; right: 20px; top: 270px;">返回前页</a>
			<input hidden id="addNumber" value="${pageContext.request.contextPath}" />
			
		</div>
	</div>
	<br />
	  
</body>
</html>