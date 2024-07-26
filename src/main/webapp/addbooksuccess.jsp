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
out.println("Book Added Successfully!! <a href='adminmenu.jsp'>Return To Menu</a><br>");
out.println("Want To Add Another Book? <a href='addbook.jsp'>Add Another Book</a>");
} else {
out.println("Failed To Add Book!! <a href='addbook.jsp'>Try Again</a>");
}
}catch (Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");
}
%>