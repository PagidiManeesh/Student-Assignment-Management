<%@ page contentType="text/html"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,AES.AES"
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body bgcolor="#FFFFFF">

<table width="102%" height="628" border="1">
<tr>
            <td height="23" colspan="2"><jsp:include page="CandidateHeader.jsp"/></td>
      </tr>
          <tr>
           
			<% if(session.getAttribute("usrname").toString().equals("admin")){%>
            <td width="15%"  height="597"><jsp:include page="Adminmenu.jsp"/></td>
			<%}else{%>
			<td width="15%"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
			<%}%>
			
            <td width="85%" valign="top">
<center>
<table border="1" cellspacing="0", cellpadding="0">

<%
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
Document doc = db.parse("webapps\\ROOT\\upload.xml");


NodeList nl= doc.getElementsByTagName("filedesc");

NodeList n3= doc.getElementsByTagName("filepath");


%>
<div id="main">
    <ul id="holder">

    
	


<% for(int k=0;k<n3.getLength();k++){
%>


<li align="center">



    <video id="my_video_1" class="video-js vjs-default-skin" controls
  preload="auto" width="640" height="480" poster="my_video_poster.png"
  data-setup="{}">
  <source src=<%= AES.decrypt(n3.item(k).getFirstChild().getNodeValue()) %>>
  
  </video>



<%
String fd =  AES.decrypt(nl.item(k).getFirstChild().getNodeValue());
response.setContentType("text/html");
out.println("<font color='black'><b>"+fd+"</b></font>");	

}

%>
</li>	
	</ul>
	</div>
<!--<tr>
<td colspan="11" align="center" bgcolor="yellow"><h2>Uploaded Files in the Server</h2></td>
</tr>
<tr bgcolor="cyan">
<td>S.No.</td><td>File Description</td>
</tr>
<% for(int k=0;k<n3.getLength();k++){
%>

<tr>
<td><%=k+1%></td>
<td bgcolor="pink"><a href='<%= AES.decrypt(n3.item(k).getFirstChild().getNodeValue()) %>'> <%= AES.decrypt(nl.item(k).getFirstChild().getNodeValue()) %></a> </td>
</tr>
<%}%>-->
</table>
</center>
</td>
</tr>
</table>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
document.oncontextmenu = document.body.oncontextmenu = function() {return false;}
</script>
</body>
</html>

