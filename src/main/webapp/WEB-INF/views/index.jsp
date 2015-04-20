<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unicorns Photography</title>
</head>
<body>
<h1 id="mainHead">Welcome to The Unicorns Photography</h1>
<div>
	<form action="displayregister" >
            <input type="submit"  value = "Register"/>
	</form>
    <br />

	<form action="displaylogin" >
            <input type="submit"  value = "login"/>
	</form>
</div>	
</body>
</html>