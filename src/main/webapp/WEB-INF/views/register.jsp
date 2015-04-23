<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Register</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css">
            body { background: #fbece6; }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <a href="?language=en" >English</a>|<a href="?language=ro" >Romanian</a>|<a href="?language=es" >Spanish</a>
                <h1><spring:message code="register.title"/></h1>
                <!--<h1>Register for Unicorns Photography</h1>-->
            </div>
            <form:form modelAttribute="newUser" action = "register" role="form">
                <!--<fieldset>-->
                <!--<legend>Register</legend>-->
                <!--<legend><spring:message code="register.register"/></legend>-->
                <div class="form-group">
                    <!--<label for="firstname">First Name: </label>-->
                    <label for="firstname"><spring:message code="register.firstname"/>:</label>
                    <form:input id="firstname" path="firstname" type="text" class="form-control" />
                    <div>
                        <form:errors path="firstname" cssStyle="color : red;" /> 
                    </div>                
                </div>
                <div class="form-group">
                    <!--<label for="lastname">Last Name: </label>-->
                    <label for="lastname"><spring:message code="register.lastname"/>: </label>
                    <form:input id="lastname" path="lastname" type="text" class="form-control"/>

                    <div>
                        <form:errors path="lastname" cssStyle="color : red;"  /> 
                    </div>
                </div>

                <div class="form-group">
                    <!--<label for="email">email: </label>-->
                    <label for="lastname"><spring:message code="register.email"/>: </label>
                    <form:input id="email" path="email" type="text"  class="form-control"/>

                    <div>
                        <form:errors path="email" cssStyle="color : red;" /> 
                    </div>
                </div>
                <div class="form-group">
                    <!--<label for="password">Password: </label>-->
                    <label for="lastname"><spring:message code="register.password"/>: </label>
                    <form:input id="password" path="password" type="password" class="form-control"/>

                    <div>
                        <form:errors path="password" cssStyle="color : #EF004C;" /> 
                    </div>
                </div>	
                <div class="form-group">
                    <!--<label for="confirmPassword">Confirm Password: </label>-->
                    <label for="lastname"><spring:message code="register.confirmPassword"/>: </label>
                    <form:input id="confirmPassword" path="confirmPassword" type="password" class="form-control"/>
                    <div>
                        <form:errors path="confirmPassword" cssStyle="color : red;" /> 
                    </div>
                </div>
                <!--</fieldset>-->
                <div class="form-group">
                    <!--<input type="submit" value="Register"  />-->
                    <input type="submit" value="<spring:message code="register.register"/>" class="btn btn-info btn-lg" />
                </div>
            </form:form>
            <!--<a href="/TheUnicornsPhotography/">Go Back</a>-->
            <a href="/TheUnicornsPhotography/"><spring:message code="register.goback"/></a>
        </div>
    </body>
</html>