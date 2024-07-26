<%@ page import ="java.sql.*" %>
<%
try {
String fullname = request.getParameter("fname");
String Email = request.getParameter("email");
String username = request.getParameter("uname");    
String password = request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library",
"root", "root");
PreparedStatement ps = null;
String sql = "INSERT INTO users(fullname, Email, username, password) VALUES (?, ?, ?, ?)";
ps = con.prepareStatement(sql);
ps.setString(1, fullname);
ps.setString(2, Email);
ps.setString(3, username);
ps.setString(4, password);
int i = ps.executeUpdate();

if (i > 0) {
out.println("User Added Successfully!! <a href='adminmenu.jsp'>Return To Menu</a>");
} else {
out.println("Failed To Add User!! <a href='adduser.jsp'>Try Again</a>");
}
}catch (Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");
}
%>