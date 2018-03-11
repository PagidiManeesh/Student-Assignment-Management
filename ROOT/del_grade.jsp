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
        <table>
    
<% try      
      {

      String sno=request.getParameter("sno");
      out.println(sno);
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
           Statement st=con.createStatement();
		   Statement st1=con.createStatement();
		   Statement st2=con.createStatement();
		   Statement st3=con.createStatement();
		   Statement st4=con.createStatement();
		   Statement st5=con.createStatement();
		   Statement st6=con.createStatement();
		

	
    
	 st.executeUpdate("delete from stud_grades where sno='"+sno+"'");
	 

     
	 

	 ResultSet rs = st5.executeQuery("select count(1) from stud_grades");
	 while(rs.next())
{
	 String ai = rs.getString(1);
	 st4.executeUpdate("alter table stud_grades AUTO_INCREMENT = " + (Integer.parseInt(ai)+1) + "");
}

       response.sendRedirect("grade_report_fac.jsp");
   }//try
      
    catch(Exception e)
     {
        //out.println(e); 
		response.sendRedirect("grade_report_fac.jsp");
     }
%>
    </table>
    </body>
</html>
