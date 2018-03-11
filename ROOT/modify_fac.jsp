 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ page import="java.sql.*"%>
<html>
<head>

</head>
<body>
<table border="1" height="628" width="100%" bgcolor="white">
<tbody>
<tr>
<td colspan="2" height="23"><jsp:include page="SAHeader.jsp"/></td>
</tr>
<tr>

			<td width="15%"  height="597"><jsp:include page="Adminmenu.jsp"/></td>
			
<td valign="center" width="738">


<%
				String c1 = (String) session.getAttribute("usrname");
            

			   Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
               Statement st=con.createStatement();
			   ResultSet rs = st.executeQuery("select a.username,a.firstname,a.lastname,a.dept,a.subject,a.course from faculty_details a,login b where a.username=b.username");%>

<table align="center" border="1">
<th>S.No.</th><th>Username</th><th>First Name</th><th>Last Name</th><th>Department</th><th>Subject</th><th>Course</th><th>Delete</th>
<% 
int slno = 1;
while(rs.next())
{
   String un = rs.getString(1);
   String fn = rs.getString(2);
   
   String ln = rs.getString(3);
   String dept=rs.getString(4);
   String sub = rs.getString(5);
   String course = rs.getString(6);
   
%>



<tr>
<td>
<%=slno%>
</td>
<td>
<%=un%>
</a>
</td>
<td>
<%=fn%>
</td>
<td>
<%=ln%>
</td>
<td>
<%=dept%>
</td>
<td>
<%=sub%>
</td>
<td>
<%=course%>
</td>
<td>
<a href="del_fac.jsp?uname=<%=un%>">Delete</a>
</td>
<%
slno++;	
}

%>
</tr>
</table>
</td>
</tr>
</tbody>
</table>


</body>

</html>