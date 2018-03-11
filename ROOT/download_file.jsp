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

			<td width="15%"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
			
<td valign="center" width="738">


<%
				String c1 = (String) session.getAttribute("usrname");
            

			   Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
               Statement st=con.createStatement();
			   ResultSet rs = st.executeQuery("select a.file_path,b.file_desc,a.sno,b.upload_date,b.username,b.faculty from assig_files_path a,assig_files_desc b,faculty_details c where b.username='" + c1 + "' and a.sno=b.sno and b.faculty=c.username order by b.upload_date desc");%>

<table align="center" border="1">
<th>S.No.</th><th>File Desc.</th><th>File Upload Date</th><th>Uploaded By</th><th>To Faculty</th>
<%
 int i=0;
while(rs.next())
{
 i=i+1;
   String fp = rs.getString(1);
   String fd = rs.getString(2);
   Integer slno = i;
   String fdate = rs.getString(4);
   String uploadedby=rs.getString(5);
   String to_fac = rs.getString(6);
	
%>



<tr>
<td>
<%=slno%>
</td>
<td>
<a href=<%=fp%>>
<%=fd%>
</a>
</td>
<td>
<%=fdate%>
</td>
<td>
<%=uploadedby%>
</td>
<td>
<%=to_fac%>
</td>
<%
	
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