<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Details</title>
    </head>
    <body>
        <h1>Post details</h1>
        <table>
            <tr>
                <td>Title:</td>
                <td><input path="title" value="${post.title}" /> </td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><input path="description" value="${post.description}"/> </td>
            </tr>
        </table>

        <form:form commandName="comment" action="addComment" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <div>
                Comment: <br/>
                <form:textarea path="comment" /> 
                <form:errors path="comment" cssClass="error" />
            </div>
            <input type="submit" value="Add Comment" />

        </form:form>

        <a href="j_spring_security_logout">logout</a>
    </body>
</html>
