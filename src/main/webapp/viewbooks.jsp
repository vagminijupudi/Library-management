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
while(rs.next()){
out.println("<u>Book Name</u> -"+rs.getString("bookname")+ "<br>");
out.println("<u>Author Name</u> -"+rs.getString("authorname")+ "<br>");
out.println("<u>Published Year</u> -"+rs.getString("year")+ "<br>");
out.println("---------------------------"+ "<br>");
}
}catch (Exception e) {
	out.println("<h2> Error: " + e.getMessage() + "</h2>");
}
out.println("<hr><center><a href='adminmenu.jsp'>Return To Menu</a></center>");
%>