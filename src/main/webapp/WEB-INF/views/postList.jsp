<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Posts</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css">
            body { background: #fbece6; }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Welcome to The Unicorn's Photography!</h1>
            </div>
            <c:forEach var="post" items="${postList}">
                <a href="postDetail/${post.postId}">${post.title}</a>
                <div class="row">
                    <div class="col-sm-6">
                        <h2><img src="<c:url value='/img/${post.picturename}'/>" class="img-thumbnail" /></h2>
                    </div>
                    <div class="col-sm-4">
                        ${post.description}<br />
                        ${post.postDate} <br />
                        
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                
                                <form:form action="editPost" method="post">                                    
                                    <input type="hidden" name="postId" value="${post.postId}">
                                    <input type="submit" value="Edit" class="btn btn-info btn-lg">
                                </form:form>
                                <form:form action="deletePost" method="post" >
                                    <input type="hidden" name="postId" value="${post.postId}">
                                    <input type="submit" value="Delete" class="btn btn-info btn-lg">
                                </form:form>
                                  
                            </sec:authorize>
                        
                    </div>
                </div>
            </c:forEach>

            <!--<a href="addPost"> Add a Post</a>-->
            <sec:authorize url="/addPost">
                <a href="addPost"> Add a Post</a>
            </sec:authorize>

            <a href="j_spring_security_logout">logout</a>
        </div>
    </body>
</html>
