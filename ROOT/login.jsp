 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
   <%@ page import="java.sql.*,java.util.Date"%>
 <%
 try {
            Class.forName("com.mysql.jdbc.Driver");
			Connection con = null,con1=null;
			Statement st=null;
			ResultSet rs=null;
			String username = request.getParameter("username");
			String password = request.getParameter("password");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
			
            st = con.createStatement();
			//st1 = con1.createStatement();
			
            rs = st.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");

            if(rs.next()) {
		session.setAttribute("uid",username);
		
		int interval = 86400000;
		session.setMaxInactiveInterval(interval);
             // department=rs.getString(3);
			 session.setAttribute("oprcode",rs.getString("status"));
			 session.setAttribute("usrname",username);
			 out.println(rs.getString("status"));
			 if(rs.getString("status").equals("a"))
				{
               // rd=req.getRequestDispatcher("AdminHomePage.jsp");
			   response.sendRedirect("AdminHomePage.jsp");
				}
			 if(rs.getString("status").equals("f"))
				{
               // rd=req.getRequestDispatcher("AdminHomePage.jsp");
			   response.sendRedirect("FacultyHomePage.jsp");
				}
				 if(rs.getString("status").equals("s"))
				{
               // rd=req.getRequestDispatcher("AdmHomePage.jsp");
			   response.sendRedirect("CandidateHomePage.jsp");
				}
				
            } else {

               response.sendRedirect("loginhome.jsp");
	        }
	        //rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
%>
