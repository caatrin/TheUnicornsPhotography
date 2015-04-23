<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <title>Posts</title>
    </head>
    <body>
        <div class="container">
             <div class="jumbotron">
        <h1>Welcome to The Unicorn's Photography!</h1>
        </div>
        <table class="CSS_Table_Example">
            <th>Title</th>
            <th>Image</th>
            <th>Description</th>
            <th>Created Date</th>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <th>Actions</th>
            </sec:authorize>
                <c:forEach var="post" items="${postList}">
                <tr>
                    <td><a href="postDetail/${post.postId}">${post.title}</a></td>
                    <td><img src="<c:url value='/img/${post.picturename}'/>" /></td>
                    <td>${post.description}</td>
                    <td>${post.postDate}</td>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <td>
                        <form:form action="editPost" method="post">
                            <input type="hidden" name="postId" value="${post.postId}">
                                <input type="submit" value="Edit">
                            </form:form>
                        </td>
                        <td>
                        <form:form action="deletePost" method="post">
                            <input type="hidden" name="postId" value="${post.postId}">
                                <input type="submit" value="Delete">
                            </form:form>
                        </td>
                    </sec:authorize>
                </tr>
            </c:forEach>
        </table>
        <!--<a href="addPost"> Add a Post</a>-->

        <sec:authorize url="/addPost">
            <a href="addPost"> Add a Post</a>
        </sec:authorize>

        <a href="j_spring_security_logout">logout</a>
        </div>
    </body>
</html>
