<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Login for Unicorns Photography</h1>
            </div>
            <c:if test="${error eq true}">
                <p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
            </c:if>
            <form method="post" action="<c:url value='j_spring_security_check' />">
                <div class="form-group">
                    User: <input name="j_username" value='<c:if test="${not empty param.login_error}">
                                     <c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>' class="form-control"/> </div>
                    <div class="form-group">
                        Pass: <input type="password" name='j_password'  class="form-control"/> </div>
                    <div class="form-group">
                        Remember me: <input type="checkbox" name="_spring_security_remember_me" /> 
                        <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
                           value="<c:out value="${_csrf.token}"/>" class="form-control"/></div>
                <div class="form-group">          
                    <input type="submit" value="Login" class="btn btn-info btn-lg"/></div>
            </form>
            <a href="/TheUnicornsPhotography/">Go Back</a>
        </div>
    </body>
</html>
