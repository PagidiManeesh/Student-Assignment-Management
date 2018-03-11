<%@ page contentType="text/html"%>
<%@ page import="java.sql.*"
%>
<html>
<body bgcolor="#FFFFFF">

<center>

<%
 try{   
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
Statement st = con.createStatement();


String uname=request.getParameter("user");
String passwd = request.getParameter("newpass");

int i = st.executeUpdate("update login set password='"+ passwd +"' where username='" + uname + "'");

 %>
 <font color="green" size="6"><%out.println("Password Updated Successfully");%></font>
	<%%>

<%
if(i==0)
{%>
<font color="red" size="6"><%out.println("InCorrect Old Password. Please try again");%></font>
<%}%>
<br/><br/><br/><br/>
<center><a href="loginhome.jsp"> Login </a></center>

<%}catch(Exception ex){
	out.println(ex.getMessage());
	
}%>

</center>

</body>
</html>