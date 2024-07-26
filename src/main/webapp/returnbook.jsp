<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RETURN A BOOK</title>
</head>
<body>
<center>
<div>Enter Book Details To Return....</div>
<form action="returnbooksuccess.jsp" method ="post">
		Bookname: <input type="text" name="bname"><br>
		Authorname: <input type="text" name="aname"><br>
		Publishedyear: <input type="text" name="pyear"><br>
        <input type="submit" value="Return Book">
</form>
</center>


</body>
</html>