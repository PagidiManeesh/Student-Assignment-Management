
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/javascript">
function check()
{
if (document.getElementById('studid').value=="")
{
alert("Please enter Student ID...");
document.form1.studid.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else if (document.getElementById('grade').value=="")
{
alert("Please Enter Grade...");
document.form1.grade.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

else if (document.getElementById('assig_name').value=="")
{
alert("Please Enter Assignment Name...");
document.form1.assig_name.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

else if (document.getElementById('sub').value=="")
{
alert("Please Enter Subject...");
document.form1.sub.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

return true;
}

/* function CheckPassword(password)
	{
	    var strength = new Array();
	    strength[0] = "Blank";
	    strength[1] = "Very Weak";
	    strength[2] = "Weak";
	    strength[3] = "Medium";
	    strength[4] = "Strong";
	    strength[5] = "Very Strong";
 
	    var score = 1;
	 
	    if (password.length < 1)
	        return strength[0];
	 
	    if (password.length < 4)
	        return strength[1];
	 
	    if (password.length >= 8)
	        score++;
	    if (password.length >= 10)
	        score++;
	    if (password.match(/\d+/))
	        score++;
	    if (password.match(/[a-z]/) &&
	        password.match(/[A-Z]/))
	        score++;
	    if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,£,(,)]/))
	        score++;
	 
	    return strength[score];
	} */
</script>

<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>
<body>
<table width="102%" height="628" border="1">
<tr>
            <td height="23" colspan="2"><jsp:include page="SAHeader.jsp"/></td>
      </tr>
          <tr>
            <td width="15%"  height="597"><jsp:include page="Facultymenu.jsp"/></td>
            <td width="85%" valign="top">

<form id="form1" name="form1" method="post" action="studgrade_db.jsp" onsubmit="return check();" >
	  <table width="70%" border="0" cellspacing="0" cellpadding="0" align="center" class="style17">
        <tr>
          <td height="46" colspan="3" align="center" bgcolor="lightblue"><font size=6><b>Student Grades&nbsp;</b></font></td>
        </tr>
        <tr>
          <td width="40%" height="36"><div align="right">
            <p>&nbsp;</p>
            <p>Student ID</p>
          </div></td>
          <td width="30%"><p>&nbsp;</p>
              <p>
                <input name="studid" type="text" id="studid" />
                
            </p></td><td><font color="blue"><b>Please Enter Student ID here</b></font></td>
        </tr>
        <tr>
          <td><div align="right">Grade</div></td>
          <td><br />
              <input name="grade" type="text" id="grade"  /></td>
        </tr>
		<tr>
          <td width="40%" height="36"><div align="right">
            <p>&nbsp;</p>
            <p>Assignment Name</p>
          </div></td>
          <td width="30%"><p>&nbsp;</p>
              <p>
                <input name="assig_name" type="text" id="assig_name" />
                
            </p></td>
        </tr>
		<tr>
          <td width="40%" height="36"><div align="right">
            <p>&nbsp;</p>
            <p>Subject</p>
          </div></td>
          <td width="30%"><p>&nbsp;</p>
              <p>
                <input name="sub" type="text" id="sub" />
                
            </p></td>
        </tr>
		        
		<tr>
          <td><p>&nbsp;</p>
          <p>&nbsp;</p></td>
          <td><input type="submit" name="Submit" value="Register Grade" style="width:60px" />          </td>
        </tr>
      </table>
</form>
</td>
</tr>
</table>
</body>
</html>
