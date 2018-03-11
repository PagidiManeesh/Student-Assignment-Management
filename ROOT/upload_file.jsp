 <%@ page import="java.sql.*"%>
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <head><title>Upload page</title></head></p> <p><body bgcolor="white">

 <table border="1" height="628" width="100%" bgcolor="white">
<tbody>
<tr>
<td colspan="2" height="23"><jsp:include page="SAHeader.jsp"/></td>
</tr>
<tr>

			<td width="15%"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
			
<td valign="center" width="738">
 <form action="upload_file_db.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
   <center bgcolor="blue">
    
   <table border=0 bgcolor="lightgreen"><pre>
       <tr>
	       <td align="center"><h1>File Uploads</h1>
	   </tr>
       <tr>
	       <td>
		               <h3> Select Assignment file: <input name="filepath" type="file" id="filepath"></h3>
		   <td>
	   </tr>
	  
		   <tr>
		   <td>
<h3>File Description:<input name="filedesc" type="text" id="filedesc"></h3>
		   </td></pre>
		 </tr>
		 <tr>
		   <td>
<h3>Select Faculty:<select name="fac"  id="fac">
<option>-----Select Faculty Here----</option>
<%
Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
               Statement st=con.createStatement();
				ResultSet rs = st.executeQuery("select username from faculty_details");
while(rs.next()){
%>
<option><%=rs.getString(1)%></option>
<%}%>
</select>
</h3>
		   </td></pre>
		 </tr>
		 <tr>
			
		    <td align="center">
               <input type="submit" name="Submit" value="Submit files"/>
			</td>
		 </tr>
    </table>
	<center>
	
 </form>
</td>
</tr>
</table>

 </body>
 </html>