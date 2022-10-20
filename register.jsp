<%@ page import=" java.sql.*" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con=null;
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String cpassword=request.getParameter("cpassword");
		out.println(email);
		out.println(password);
		out.println(cpassword);
		
			try {
				//out.println("uuuuuuuuuuuuuuuuuuuuuu");
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("Driver loaded");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jb_assign","root","Anjali@123");
				//out.println("connnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn");
				String query="Select * from CUSTOMER";
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs = ps.executeQuery();
				out.println("| CID "+"| CNAME "+"| CEMAIL | ADDRESS ");
				out.println("------------------------");
				while(rs.next()){
					out.println("| "+rs.getString(1)+" | "+rs.getString(2)+" | "+rs.getString(3)+" |"+rs.getString(4));
				}
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			
	%>
	
</body>
</html>
