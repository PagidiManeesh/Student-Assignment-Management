<%@ page contentType="text/html"%>
<%@ page import="java.sql.*"
%>
<html>
<body><center>


<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select username,secques,secans from stud_details");

String suser = request.getParameter("username");
String  squser = request.getParameter("secquestion");
String  sauser= request.getParameter("secanswer");

while(rs.next()){
String user = rs.getString(1);
String sq = rs.getString(2);
String sa = rs.getString(3);	


session.setAttribute("fuser",suser);

if(user.equals(suser)&&sq.equals(squser)&&sa.equals(sauser))
{
response.sendRedirect("ForgotPassword.jsp");
}

}
%> 
</center>
</body>
</html>
