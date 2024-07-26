<%@ page import ="java.sql.*" %>
<%
String username = request.getParameter("uname");    
String password = request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from admin where uname='" + username + "' and pass='" + password + "'");
if (rs.next()) {
session.setAttribute("username", username);
response.sendRedirect("adminmenu.jsp");
} else {
out.println("Invalid password / username <a href='liblogin.jsp'>try again</a>");
}
%>