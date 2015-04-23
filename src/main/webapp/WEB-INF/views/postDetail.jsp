<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Details</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css">
            body { background: #fbece6; }
        </style>
    </head>
    <body>
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
        <form:form commandName="comment" action="addComment" method="post">
            <%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
            <div class="form-group">
                Comment: <br/>
                <form:textarea path="comment" class="form-control"/> 
                <form:hidden path="post.postId" value="${post.postId}"/>
                <form:errors path="comment" cssClass="error" />
            </div>
            <input type="submit" value="Add Comment" class="btn btn-info btn-lg"/>

        </form:form>

        <div id="comments">
            <c:forEach var="comment" items="${post.comments}">
                <p>${comment.comment}</p>               
            </c:forEach>                
        </div>
        <a href="../posts">Go Back</a>
        <a href="../j_spring_security_logout">logout</a>
         </div>
    </body>
</html>
