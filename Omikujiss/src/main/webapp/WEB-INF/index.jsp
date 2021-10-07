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
     <h1>Send an Omikuji</h1>
      
     <p><c:out value="${nam}"></c:out></p>
     <p><c:out value="${score}"></c:out></p>
     <form action="/create" method="post">
     <p>Pick any number from 5 to 25</p>
     <input type="number" name="pick"><br>
     <p>Enter the name of any city</p><br>
     
     <input type="text" name="name">
     <p>Enter the name of any real person</p><br>
     <input type="text" name="person">
     <p>Enter professional endeavor or hobby:</p><br>
     <input type="text" name="profession">
     <p>Enter any type of living thing</p><br>
     <input type="text" name="living">
     <p>Say something nice to someone</p><br>
     <input type="text" name="say">
     <p><i>Send and show a friend</i></p>
     <input type="submit" value="send">
     </form>

</body>
</html>