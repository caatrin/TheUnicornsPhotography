<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Post</title>
    </head>
    <body>
          <form:form commandName="post" action="updatePost" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <form:hidden path="postId" value="${post.postId}"/>
            <table>
                <tr>
                    <td>Title:</td>                   
                    <td>
                        <form:input path="title" />
                    </td>
                    <td><form:errors path="title" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><form:input path="description" /> </td>
                    <td><form:errors path="description" cssClass="error"/> </td>
                </tr>
            </table>
                <input type="submit" value="Edit Post" />

        </form:form>
    </body>
</html>
