<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Post</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    </head>
    <body>
          <form:form commandName="post" action="updatePost" method="post" enctype="multipart/form-data">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <form:hidden path="postId" value="${post.postId}"/>
            <form:hidden path="picturename" value="${post.picturename}"/>
            <table>
                <tr>
                    <td>Title:</td>                   
                    <td>
                        <form:input path="title" />
                    </td>
                    <td><form:errors path="title" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Image:</td>
                    <td><form:input id="picturename" name="picturename" type="file" path="imageFile"/></td>
                    <td><form:errors path="picturename" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><form:input path="description" /> </td>
                    <td><form:errors path="description" cssClass="error"/> </td>
                </tr>
            </table>
                <input type="submit" value="Edit Post" />
            </form:form>
            <a href="posts">Go Back</a>
            <a href="j_spring_security_logout">logout</a>
        </div>
    </body>
</html>
