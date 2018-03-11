<%@ page import="java.sql.*" %> 
<%@ page 
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Assignment Management System</title>
    </head>
    <body bgcolor="white">
    <table width="102%" height="628" border="1">
<tr>
            <td height="23" colspan="2"><jsp:include page="SAHeader.jsp"/></td>
      </tr>
          <tr>
            <td width="15%"  height="597"><jsp:include page="Facultymenu.jsp"/></td>
            <td width="85%" valign="top">
<%
request.setCharacterEncoding("UTF-8");
String sid = request.getParameter("studid");
String gr = request.getParameter("grade");
String an = request.getParameter("assig_name");
String s = request.getParameter("sub");
String c1 = (String) session.getAttribute("usrname");



Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
    String dbName = "studassign?useUnicode=true&characterEncoding=UTF-8";
    String driver = "com.mysql.jdbc.Driver";
    String userName = "root"; 
    String password = "ROOT";

    int sumcount=0; 
	Statement st,st1;
    try {
      Class.forName("com.mysql.jdbc.Driver");
	 
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign?useUnicode=true&characterEncoding=UTF-8",userName,password);
	    String utf_query = "set names utf8";
	    String query = "insert into stud_grades(stud_id,grade,assig_name,subject,result_date,faculty) values('" + sid + "','" + gr + "','" + an + "','" + s + "',sysdate(),'" + c1 + "')";
	
       st = conn.createStatement();
	   st1=conn.createStatement();
	   st1.executeUpdate("set names utf8");
	   int i = st.executeUpdate(query);
	   if(i>0)
		{
		    out.println("<br/><br/><br/><br/><center><font color='green' size='6'><b>Grade Inserted Successfully</b></font></center>");
		    
		}
        else
		{
			out.println("<br/><br/><br/><br/><center><font color='red' size='6'><b>Insertion Failed!!!!!</b></font></center>");
		}
       
		
	}
	catch (Exception e) {
      e.printStackTrace();
    }
 %>
</td>
</tr>
</table>
</body>
</html>