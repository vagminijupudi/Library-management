<%@ page import ="java.sql.*" %>
<%
try {
String bookname = request.getParameter("bname");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library",
"root", "root");
PreparedStatement ps = null;
String sql = "delete from books where bookname=?";
ps = con.prepareStatement(sql);
ps.setString(1, bookname);
int i=ps.executeUpdate();
if(i > 0){
out.println("Book Deleted Successfully");
} else{
	out.println("No Book found with the given name");
}
}catch (Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");
}
out.println("<hr><center><a href='adminmenu.jsp'>Return To Menu</a></center>");
%>