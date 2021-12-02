<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
<style>
header
{
	background: #E5E5E5;
	border: 1px solid #D3D3D3;
}
section
{
	float:left;
	width:80%;
	min-height:500px;
}
aside
{
	float:right;
	width:20%;
	min-height:500px;
	background: #E5E5E5;
	border: 1px solid #D3D3D3;
}
</style>
</head>
<body>
<header>
	<tiles:insertAttribute name="header" />
</header>
<div class="row">
	<aside>
		<tiles:insertAttribute name="menu" />
	</aside>
	<section>
		<tiles:insertAttribute name="body" />
	</section>
</div>
</body>
</html>