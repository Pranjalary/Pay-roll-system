<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Deparement Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="JavaScript">
function back()
{
document.dept1.action="./registration.jsp";
document.dept1.submit();
}
function dcode()
{
var d=document.dept1.deptcode.value;
if(!isNaN(d))
{
alert("enter any valid dept code");
document.dept1.deptcode.focus();
document.dept1.deptcode.value="";
}
}
function ddesc()
{
var ds=document.dept1.deptdesc.value;
if(!isNaN(ds))
{
alert("enter any valid dept desc ");
document.dept1.deptdesc.focus();
document.dept1.deptdesc.value="";
}
}
</script>
<form action="./desnmaster.jsp" name="dept1">
<body bgcolor="#FFFFCC">
<center>
<br><h1>ActiveNet Informatics Pvt Ltd..</h1>
<hr>
<br>
  <h3>Designation Master</h3>
  <% 
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:payroll","payroll","payroll");

  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select deptcode from deptmaster");
  %>
<table>
<tr><td>Dept Code</td><td><select name="deptcode">
<% while(rs.next())
{%>
<option><%=rs.getString(1)%></option>
<% } %>
</select></td></tr>
<tr><td>Desn Code</td><td><input type="text" name="desncode"></td></tr>
<tr><td>Desn desc</td><td><input type="text" name="desndesc"></td></tr>
</table>
<pre>
<table>
<tr><td>
<input type="submit" value="SAVE" style="width: 80; height: 20; border: 1px solid #0000FF">
<input type="reset" value="ADDNEW" style="width: 80;height: 20;border: 1px solid #0000FF">
<input type="submit" value="BACK" style="width: 80;height: 20;border: 1px solid #0000FF" onclick="back()">
</td></tr>
</table>
</pre>
</center>
</body>
</form>
</html>
