<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
<br><br>
<center>
<% 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:payroll","payroll","payroll");

String gcode=request.getParameter("gcode");
PreparedStatement pst1=con.prepareStatement("delete from grade where gcode='"+gcode+"'");
pst1.executeUpdate();
%>
<%out.println("Record Deleted");%>
<a href="./registration.jsp">BACK</a>
</center>
</body>
</html>
