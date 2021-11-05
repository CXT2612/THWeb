<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	// Header
	<jsp:include page="./layout/header.jsp"/>
<div style="display: flex;">
	// Menu
	<jsp:include page="./layout/menu.jsp"/>
	
	// View content
	<div class="content" style="margin-left: 30px;">
      <h2>View Content</h2>
      <hr/>
      <div class="all">
        <div>
            <span class="top-text">View Content List</span>
          <hr/>
        </div>
        
        <table>
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
      </div>
    </div>
</div>
</div>
</body>
</html>