<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a New Post</title>
    </head>
    <body>
        <form:form commandName="post" action="addPost" method="post" enctype="multipart/form-data">
            <%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
            <table>
                <tr>
                    <td>Title:</td>
                    <td><form:input path="title" /> </td>
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
            <input type="submit" value="Create Post" />

        </form:form>

        <a href="j_spring_security_logout">logout</a>
    </body>
</html>
