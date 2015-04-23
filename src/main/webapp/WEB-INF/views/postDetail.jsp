<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <title>Post Details</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">            
            <h1 class="text-center">${post.title}</h1>
            <p><img src="<c:url value='/img/${post.picturename}'/>" class="img-responsive center-block"/></p>            
            <p class="text-center">${post.description}</p>
        
        <form:form commandName="comment" action="addComment" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <div>
                Comment: <br/>
                <form:textarea path="comment" cols="150"/> 
                <form:hidden path="post.postId" value="${post.postId}"/>
                <form:errors path="comment" cssClass="error" />
            </div>
            <input type="submit" value="Add Comment" />

        </form:form>
        <hr/>
        <div id="comments">
            <c:forEach var="comment" items="${post.comments}">
                <p><b>${comment.user.firstname}&nbsp;${comment.user.lastname}</b>&nbsp;said:</p>
                <p><blockquote>${comment.comment}</blockquote></p>               
            </c:forEach>                
        </div>
        <a href="../posts">Go Back</a>
        <a href="../j_spring_security_logout">logout</a>
        </div>
    </body>
</html>
