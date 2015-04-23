<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a New Post</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css">
            body { background: #fbece6; }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Unicorn's Photography!</h1>
            </div>
            <form:form commandName="post" action="addPost" method="post" enctype="multipart/form-data">
                <%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
                <div class="form-group">
                    Title:
                    <form:input path="title" class="form-control"/> 
                    <form:errors path="title" cssClass="error" /> </div>
                <div class="form-group">
                    Image:
                    <form:input id="picturename" name="picturename" type="file" path="imageFile" />
                    <form:errors path="picturename" cssClass="error" /> 
                </div>
                <div class="form-group">
                    Description:
                    <form:input path="description"  class="form-control"/> 
                    <form:errors path="description" cssClass="error"/> 
                </div>
                <div class="form-group">
                    <input type="submit" value="Create Post" class="btn btn-info btn-lg"/>
                </div> 
            </form:form>
            <a href="posts">Go Back</a>
            <a href="j_spring_security_logout">logout</a>
        </div>
    </body>

</html>
