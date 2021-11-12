<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Content</title>
</head>
<body>
<div>
	// Header
	<jsp:include page="/Web/src/main/weapp/layout/header.jsp"/>
<div style="display: flex;">
	// Menu
	<jsp:include page="/Web/src/main/weapp/layout/menu.jsp"/>
	
	// Add content
	<div class="content" style="margin-left: 30px; width: 100%;">
        <h2>Add Content</h2>
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
</div>
</div>
</body>
</html>