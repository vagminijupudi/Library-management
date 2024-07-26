Welcome <%=session.getAttribute("username")%>
<hr>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library",
"root", "root");
PreparedStatement ps = null;
ResultSet rs=null;
try {
String sql = "select * from books";
ps = con.prepareStatement(sql);
rs=ps.executeQuery();
out.println("<u>List Of Books Available:</u>" + "<br><br>");
while(rs.next()){
out.println("=><u>Book Name</u> -"+rs.getString("bookname")+ "<br>");
}
}catch (Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");
}
%>
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
<title>User Menu</title>
</head>
<body>
<form action="takebook.jsp" method="post" >
        <input type="submit" value="Borrow Book">
</form>
<form action="returnbook.jsp" method="post" >
        <input type="submit" value="Return Book">
</form>
<form action="index.jsp" method="post" >
        <input type="submit" value="Log Out">
</form>
</body>
</html>