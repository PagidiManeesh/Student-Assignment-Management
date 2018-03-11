<%@page  import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMS</title>
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
        <table>
    
<% try      
      {

      String user=request.getParameter("uname");
      
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
           Statement st=con.createStatement();
		   Statement st1=con.createStatement();
		   
		

	
    
	 st.executeUpdate("delete from login where username='"+user+"'");
	 st1.executeUpdate("delete from faculty_details where username='"+user+"'");
		out.println("<font color='green' size='4'>Deleted Sucessfully</font>");
     
	 

	 
   }//try
      
    catch(Exception e)
     {
        //out.println(e); 
		response.sendRedirect("modify_fac.jsp");
     }
%>
    </table>
	</td>
	</tr>
	</table>
    </body>
</html>
