<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page isErrorPage="true" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9kGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>
<body>
     <h1>Here is your Omikuji</h1>
     <p><a href="/add">Add</a></p>
    
     <p>In<c:out value="${pick}"></c:out>, you will
     live in<c:out value="${name}"></c:out> with
     <c:out value="${person}"></c:out>as your roommate, 
     <c:out value="${living}"></c:out>for a living.The next time you see a 
     <c:out value="${living}"></c:out>, you will have a good luck.Also,
     <c:out value="${say}"></c:out>.</p>
     <p><a href="/omikuji">Go Back</a></p>
     <p><c:out value="${score}"></c:out></p>
     <a href="/destroy">Destroy Session</a>
     
</body>
</html>