<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/css/table.css" />" type="text/css"/>
        <title>Posts</title>
    </head>
    <body>
        <h1>Welcome to The Unicorn's Photography!</h1>
        <table class="CSS_Table_Example">
            <th>Title</th>
            <th>Description</th>
            <th>Created Date</th>
            <th>Actions</th>
            <c:forEach var="post" items="${postList}">
                <tr>
                    <td>${post.title}</td>
                    <td>${post.description}</td>
                    <td>${post.postDate}</td>
                    <td>
                        <form:form action="post/${post.postId}" method="get">
                            <input type="submit" value="Edit">
                        </form:form>
                    </td>
                    <td>
                        <form:form action="post/delete" method="post">
                            <input type="hidden" name="id" value="${post.postId}">
                            <input type="submit" value="Delete">
                        </form:form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="addPost"> Add a Post</a>
        
<!--          <sec:authorize url="/addPost">
            <a href="addPost"> Add a Post</a>
        </sec:authorize>-->
    </body>
</html>
