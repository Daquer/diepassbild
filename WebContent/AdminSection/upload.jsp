<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>File Upload with Servlet 3.0</title>
    <link rel="stylesheet" href="/AdminSection/css/AdminSection.css" />
    <script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
</head>
<body>
<form action="/uploads" enctype="multipart/form-data" method="post">
    <div>
    	<span>Projeto:</span> 
    	<input type="text" name="projeto"/>
    </div>
    <div>
    	<span>Fotos:</span>
    	<input type="file" name="uploadFile" multiple/>
    </div>
    <input type="submit" />
</form>
</body>
</html>