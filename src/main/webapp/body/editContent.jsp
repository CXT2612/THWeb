<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="homepage.css">
<title>Edit Content</title>
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
<div>
	<header>
		<%@include file="../layout/header.jsp"%>
	</header>
<div class="row">
	<aside>
		<%@include file="../layout/menu.jsp"%>
	</aside>
	<section>
	<div class="content" style="margin-left: 30px; width: 100%;">
        <h2>Edit Content</h2>
        <hr/>
        <div class="all">
          <div>
              <span class="top-text">Content Form Elements</span>
            <hr/>
          </div>
          <div style="margin: 15px;">
            <b>Title</b><br/>
            <input type="text" style="width: 500px; height: 30px;" placeholder="Enter the title"/><br/><br/>
            <b>Brief</b><br/>
            <textarea style="width: 500px; height: 60px;"></textarea><br/><br/>
            <b>Content</b><br/>
            <textarea style="width: 500px; height: 150px;"></textarea><br/><br/>
            <div style="display: flex;">
                <button>Submit Button</button>
                <button style="margin-left:5px;">Reset Button</button>
            </div>
          </div>    
        </div>
      </div>
      </section>
</div>
</div>
</body>
</html>