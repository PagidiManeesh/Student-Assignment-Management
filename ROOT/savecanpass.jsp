<%@ page contentType="text/html"%>
<%@ page import="java.sql.*"
%>
<% 
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = null,con1=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
			Statement st=null,st1=null;
			ResultSet rs=null;
			String user = request.getParameter("user");
			String pwd = request.getParameter("pass");
			String newpwd = request.getParameter("newpass");
			String stat = session.getAttribute("oprcode").toString();
			%>
<html>
<body bgcolor="#FFFFFF">
<table width="102%" height="628" border="1">
<tr>
            <td height="23" colspan="2"><jsp:include page="SAHeader.jsp"/></td>
      </tr>
          <tr>
            <% if(stat.equals("a"))
				{%>
               <td width="15%"  height="597"><jsp:include page="Adminmenu.jsp"/></td>
				<%}
			 if(stat.equals("f"))
					{%>
               <td width="15%"  height="597"><jsp:include page="Facultymenu.jsp"/></td>
				<%}
				 if(stat.equals("s"))
				{%>
               <td width="15%"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
				<%}%>
            
			
            <td width="85%" valign="top">
<center>

<%
    st = con.createStatement();
	st1 = con.createStatement();
	rs = st.executeQuery("select username, password from login where username='"+user+"' and password='"+pwd+"'");    
	int i=0;

%>

<% 
	
	if(rs.next()){
    i =st1.executeUpdate("update login set password='"+newpwd+"' where username='"+user+"' and password='"+pwd+"'");
 %>
 <font color="green" size="6"><%out.println("Password Updated Successfully");%></font>
	<%}%>

<%
if(i==0)
{%>
<font color="red" size="6"><%out.println("InCorrect Old Password. Please try again");%></font>

<%}%>
</center>
</td>
</tr>
</table>
</body>
</html>