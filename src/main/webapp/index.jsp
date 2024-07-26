<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.user{
font-size:20px;
padding:5px;
}
.lib{
font-size:20px;
padding:5px;
}
h1{
font-size:100px;
}
div{
padding:15px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
</head>
<body>
<center>
<div> <h1><u>Library Management System</u></h1> </div>

    <div class="flex-column">
    <form action="userlogin.jsp" method="post" >
        <input type="submit" value="User Login" class="user">
    </form>
    </div>
    

<div class=" flex-column">
    <form action="liblogin.jsp" method="post" >
        <input type="submit" value="Librarian Login" class="lib">
    </form>
</div>

</body>
</html>