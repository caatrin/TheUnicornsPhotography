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
            body { background: #fbece6 !important; }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Welcome to The Unicorn's Photography!</h1>
            </div>
            <c:forEach var="post" items="${postList}">
                <h2><a href="postDetail/${post.postId}">${post.title}</a></h2>
                <div class="row">
                    <div class="col-sm-6">
                        <h2><img src="<c:url value='/img/${post.picturename}'/>" class="img-rounded" style="width:350px;height:250px"/></h2>
                    </div>
                    <div class="col-sm-6">
                        <h3>${post.description}</h3>
                        <h5>Posted on ${post.postDate}</h5>
                        
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <table class="table">
                                    <tr>
                                        <td>
                                <form:form action="editPost" method="post">                                    
                                    <input type="hidden" name="postId" value="${post.postId}">
                                    <input type="submit" value="Edit" class="btn btn-info btn-lg">
                                </form:form>
                                    </td>
                                    <td>
                                <form:form action="deletePost" method="post" >
                                    <input type="hidden" name="postId" value="${post.postId}">
                                    <input type="submit" value="Delete" class="btn btn-info btn-lg">
                                </form:form>
                                    </td>
                                  </tr>
                                </table>
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
