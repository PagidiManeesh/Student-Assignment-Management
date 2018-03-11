
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
            <td width="15%"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
            <td width="85%" valign="top"><center><% 
			out.println("Welcome  "+ (String)session.getAttribute("usrname")); %><br/><br/><br/><br/><br/><br/><img src="img2.jpg" width="500" height="299"></center></td>
      </tr>
        </table>
</body>
</html>