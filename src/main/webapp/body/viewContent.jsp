<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Content</title>
<link rel="stylesheet" href="style-view.css">
<style type="text/css">
header
{
	border: 1px solid #D3D3D3;
}
section
{
	float:right;
	width:80%;	
	min-height:750px;
}
aside
{
	float:left;	
	background: #E5E5E5;
	border: 1px solid #D3D3D3;
	min-height:750px;
}
</style>
</head>
<body>
	<header>
		<%@include file="../layout/header.jsp"%>
	</header>
<div class="row">
	<aside>
		<%@include file="../layout/menu.jsp"%>
	</aside>
	<section>
  <table width="1000px">
    <tr>
       <th>#</th>
       <th>Title</th>
       <th>Brief</th>
       <th>Created Date</th>
       <th>Option</th>
    </tr>    
       <tr>
          <td>1</td>
          <td>This is the title</td>
          <td>This is the Brief</td>
           <td>This is the created date</td>
          <td>
             <a href="#">Edit</a>/<a href="#">Delete</a>
          </td>           
       </tr>   
  </table>
  </section>
</div>
</body>
</html>