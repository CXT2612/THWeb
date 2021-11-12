<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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