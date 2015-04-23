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
<<<<<<< HEAD
        <div class="container">            
            <h1 class="text-center">${post.title}</h1>
            <p><img src="<c:url value='/img/${post.picturename}'/>" class="img-responsive center-block"/></p>            
            <p class="text-center">${post.description}</p>
        
=======
         <div class="container">
             <div class="jumbotron">
        <h1>Post Details</h1>
        </div>
             <div class="form-group">
        Title:
        <input path="title" value="${post.title}" class="form-control" /> 
             </div>
        <div class="form-group">
        Description:
        <input path="description" value="${post.description}" class="form-control"/> 
        </div>
>>>>>>> feature_css
        <form:form commandName="comment" action="addComment" method="post">
            <%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
            <div class="form-group">
                Comment: <br/>
<<<<<<< HEAD
                <form:textarea path="comment" cols="150"/> 
=======
                <form:textarea path="comment" class="form-control"/> 
>>>>>>> feature_css
                <form:hidden path="post.postId" value="${post.postId}"/>
                <form:errors path="comment" cssClass="error" />
            </div>
            <input type="submit" value="Add Comment" class="btn btn-info btn-lg"/>

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
<<<<<<< HEAD
        </div>
=======
         </div>
>>>>>>> feature_css
    </body>
</html>
