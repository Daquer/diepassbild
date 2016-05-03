<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>File Upload with Servlet 3.0</title>
</head>
<body>
<form action="uploads" enctype="multipart/form-data" method="post">
    <input type="text" name="projeto"/>
    <input type="file" name="uploadFile" />
    <input type="submit" />
</form>
</body>
</html>