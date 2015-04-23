<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Unicorns Photography</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css">
            body { background: #fbece6; }
        </style>
    </head>
    <body>
        <div class="container">
        <div class="jumbotron">
            <a href="?language=en" >English</a>|<a href="?language=ro" >
                Romanian</a>|<a href="?language=es" >Spanish</a>        
            <h1><spring:message code="index.welcomeTitle"/></h1>
            <!--<h1 id="mainHead">Welcome to The Unicorns Photography Index</h1>-->
        </div>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-3">
                <form:form commandName="newUser" action="register" method="get">
                    <input type="submit"  value = "<spring:message code="index.register"/>" class="btn btn-info btn-lg"/>
                    <!--<input type="submit"  value = "register"/>-->
                </form:form>
            </div>
            <div class="col-sm-4">
                <form:form action="posts" method="get">
                    <input type="submit"  value = "<spring:message code="index.login"/>" class="btn btn-info btn-lg"/>
                    <!--<input type="submit"  value = "login"/>-->
                </form:form>
            </div>
        </div>
            </div>
    </body>
</html>
