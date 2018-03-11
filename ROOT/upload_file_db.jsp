<%@page import="java.io.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
   <%@ page import="java.sql.*"%>
   <%@ page import="java.io.File" %>
   <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
   <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
   <%@ page import="org.apache.commons.fileupload.*"%>
   <%@ page contentType="text/html;charset=UTF-8" language="java" %>
   

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMS</title>
		
    </head>
    <body bgcolor="#D9EEFB">
	 <table border="1" height="628" width="100%">
<tbody>
<tr>
<td colspan="2" height="23"><jsp:include page="SAHeader.jsp"/></td>
</tr>
<tr>

			<td width="15%"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
			
<td valign="center" width="738">
        
		<%
		String c1 = (String) session.getAttribute("usrname");
           
   String file_desc = null,faculty=null;
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
 } else {
	   FileItemFactory factory = new DiskFileItemFactory();
	   ServletFileUpload upload = new ServletFileUpload(factory);
	   List items = null;
	   try {
		   items = upload.parseRequest(request);
	   } catch (FileUploadException e) {
		   e.printStackTrace();
	   }
	   Iterator itr = items.iterator();
	   while (itr.hasNext()) {
	   FileItem item = (FileItem) itr.next();
	   if (item.isFormField()) {
	   String field_name = item.getFieldName();
	   if(field_name.equals("filedesc"))
		   {
	   file_desc = item.getString();
		   }
		   if(field_name.equals("fac"))
		   {
	   faculty = item.getString();
		   }
				   

	  
	   } else {
		  
		   try {
			   String itemName = item.getName();
			   File savedFile = new File(config.getServletContext().getRealPath("/")+"uploadedFiles/"+itemName);
			   item.write(savedFile);
			   String file_path = "../uploadedFiles/"+itemName;
			   out.println(file_path);
			   Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
               Statement st=con.createStatement();
			   
              
			   
			   st.executeUpdate("insert into assig_files_path(file_path,username,upload_date) values('" + file_path + "','"+ c1 +"',sysdate())"); 
			   
			   
			   st.close();
			  
			   out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
	   }
	   }
	    Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
               Statement st1=con.createStatement();
			   st1.executeUpdate("insert into assig_files_desc(file_desc,username,upload_date,faculty) values('" + file_desc + "','" + c1 + "',sysdate(),'" + faculty +"')"); 
			   st1.close();

   }
   %>
      </td>
	  </tr>
	  </table>
          </body>
</html>

