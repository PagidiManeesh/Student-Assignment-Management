   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   public class studreg extends HttpServlet {
    Connection con=null;
    Statement st=null, st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        String username= req.getParameter("username");
       String password= req.getParameter("password");
        String firstname= req.getParameter("firstname");
		String lastname= req.getParameter("lastname");
        String dept= req.getParameter("dept");
	String sques= req.getParameter("secquestion");
	String sans= req.getParameter("secanswer");
		String course= req.getParameter("course");
        RequestDispatcher rd;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studassign","root","ROOT");
            st = con.createStatement();
			st1 = con.createStatement();
            int add=st.executeUpdate("insert into stud_details values('"+username+"','"+firstname+"','"+course+"','"+dept+"','"+sques+"','"+sans+"')");
			int addl= st1.executeUpdate("insert into login values('"+username+"','"+password+"','s')");
			if(add==1&&addl==1){
            rd=req.getRequestDispatcher("insertsuccess.jsp");
            rd.forward(req,res);
			}
		else{

            rd=req.getRequestDispatcher("failure.jsp");
			rd.forward(req,res);
		}
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
        }
    }
}
