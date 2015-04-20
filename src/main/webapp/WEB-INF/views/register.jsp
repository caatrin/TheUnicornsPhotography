<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<h1>Register for Unicorns Photography</h1>
<form:form modelAttribute="newUser" action = "register" >
	<fieldset>
		<legend>Register</legend>
		
		<p>
			<label for="firstname">First Name: </label>
			<form:input id="firstname" path="firstname" type="text"  />
			
			<div>
 				<form:errors path="firstname" cssStyle="color : red;" /> 
 			</div>
		</p>
		<p>
			<label for="lastname">Last Name: </label>
			<form:input id="lastname" path="lastname" type="text" />
			
			<div>
 				<form:errors path="lastname" cssStyle="color : red;"  /> 
 			</div>
		</p>
		<p>
			<label for="email">email: </label>
			<form:input id="email" path="email" type="text"  class="propertyClassEmail"/>
			
			<div>
 				<form:errors path="email" cssStyle="color : red;" /> 
 			</div>
		</p>
		
		<p>
			<label for="password">Password: </label>
			<form:input id="password" path="password" type="password" class="propertyClassPass"/>
			
			<div>
 				<form:errors path="password" cssStyle="color : #EF004C;" /> 
 			</div>
		</p>		
		<p>
			<label for="confirmPassword">Confirm Password: </label>
			<form:input id="confirmPassword" path="confirmPassword" type="password" class="propertyClassCpass"/>
			
			<div>
 				<form:errors path="confirmPassword" cssStyle="color : red;" /> 
 			</div>
		</p>
                <p>
			<form:input type="hidden" id="thisField" name="inputName" value="USER" path = "role" />
		</p>
		
	</fieldset>
	
	<p id="buttons">
             <input type="submit" value="Register"  />
        </p>

</form:form>
</body>
</html>