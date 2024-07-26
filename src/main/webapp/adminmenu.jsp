<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>

input{
font-size:20px;
padding:5px;
}
form{
padding:10px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Librarian Menu</title>
</head>
<body>
WELCOME...
<hr>
<center>
<form action="adduser.jsp" method="post" >
        <input type="submit" value="Add User">
</form>
<form action="addbook.jsp" method="post" >
        <input type="submit" value="Add Books">
</form>
<form action="viewbooks.jsp" method="post" >
        <input type="submit" value="View All Books">
</form>
<form action="deletebook.jsp" method="post" >
        <input type="submit" value="Delete Books">
</form>
<form action="index.jsp" method="post" >
        <input type="submit" value="Log Out">
</form>
</center>

</body>
</html>