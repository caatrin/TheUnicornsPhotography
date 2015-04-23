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
        <style type="text/css">
            body { background: #fbece6; }
        </style>
    </head>
    <body>
        <div class="container"> 
             <div class="jumbotron">
            <h1 class="text-center">${post.title}</h1>
             </div>
            <p><img src="<c:url value='/img/${post.picturename}'/>" class="img-responsive center-block img-rounded"/></p>            
            <p><h3 class="text-center">${post.description}</h3></p>
      <form:form commandName="comment" action="addComment" method="post">
            <%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
            <div class="form-group">
                Comment: <br/>
                <form:textarea path="comment" cols="150" class="form-control"/> 
                <form:hidden path="post.postId" value="${post.postId}"/>
                <form:errors path="comment" cssClass="error" />
            </div>
            <input type="submit" value="Add Comment" class="btn btn-info btn-lg"/>
        </form:form>
        <hr/>
        <div id="comments">
            <c:forEach var="comment" items="${post.comments}">
                <p><b>${comment.user.firstname}&nbsp;${comment.user.lastname}</b>&nbsp;said on ${comment.commentDate}:</p>
                <p><blockquote>${comment.comment}</blockquote></p>               
            </c:forEach>                
        </div>
        <a href="../posts">Go Back</a>
        <a href="../j_spring_security_logout">logout</a>
        </div>
    </body>
</html>
