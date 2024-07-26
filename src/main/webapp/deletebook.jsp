<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
div{
font-size:30px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>DELETE BOOK</title>
</head>
<body>
<center>
<div>Enter Book Name To Delete....</div>
<form action="deletebooksuccess.jsp" method ="post">
		Bookname: <input type="text" name="bname"><br>
        <input type="submit" value="Delete Book">
</form>
</center>

</body>
</html>