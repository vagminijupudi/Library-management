<%@ page import ="java.sql.*" %>
<%
try {
String bookname = request.getParameter("bname");
String authorname = request.getParameter("aname");
String year = request.getParameter("pyear");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library",
"root", "root");
PreparedStatement ps = null;
String sql = "INSERT INTO books(bookname, authorname, year) VALUES (?, ?, ?)";
ps = con.prepareStatement(sql);
ps.setString(1, bookname);
ps.setString(2, authorname);
ps.setString(3, year);
int i = ps.executeUpdate();

if (i > 0) {
out.println("Book Returned Successfully!! <a href='usermenu.jsp'>Return To Menu</a><br>");
} else {
out.println("Failed To Return Book!! <a href='returnbook.jsp'>Try Again</a>");
}
}catch (Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");
}
%>