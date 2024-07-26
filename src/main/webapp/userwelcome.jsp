<%@ page import ="java.sql.*" %>
<%
try {
String uname = request.getParameter("username");    
String pass = request.getParameter("password");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from users where username='" + uname + "' and password='" + pass + "'");
if (rs.next()) {
session.setAttribute("uname", uname);
response.sendRedirect("usermenu.jsp");
} else {
out.println("Invalid password / username <a href='userlogin.jsp'>try again</a>");
}
}
catch(Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");	
}
%>