<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>www.hrsolutions.com/User Login</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<form  action="hrms_user_login"  method="post">
<table width="900" align=center>
	 <tr>
	<td colspan="2"><%@ include file="/hrms_header.jsp" %></td>
    </tr> 
	<tr >
	<td colspan="2">
	<table border ="0"  align="center" >
	<tr><td>User Id</td>
	<td align="center" >
	  <input type ="text" name="user_id" id="user_id" value="" />
    </td>
    </tr>
	<tr><td>User Name</td>
	<td align="center" >
	<input type ="text" name="user_name" id="user_name" value="" />
	</td>
	</tr>
	<tr><td>Password</td>
	<td align="center" >
	<input type ="password" name="user_pswd" id="user_pswd" value="" />
	</td>
	</tr>
	<tr><td colspan="2" align="center" >
	<input type ="submit" name="submit" id="submit" value="Submit" />
	<input type="hidden" name="action_submit" id="action_submit" value="hrms_user_login_submit"/>
	</td>
	</tr>
	<tr><td colspan="2" align="center">
	<input type ="submit" name="submit" id="submit" value="Change Password" />
	<input type="hidden" name="action_chngpswd" id="action_chngpswd" value="hrms_change_pswd_submit"/>
	</td></tr>
	<%
	String msg  = (String)session.getAttribute("lErrorMsg");
	if ( msg != null && msg.length() > 0 ){
	%>
    <tr>
	<td colspan="2" align="center"> 
	<%	out.println("<div class=boldred>"+msg+"</div>"); %>
	</td>
	</tr>
	<%	}	%>
	</table>
	</td></tr>
	 <tr>
		<td colspan="2"><%@include file="/hrms_footer.jsp"%></td>
	</tr> 
	</table>
</form></body></html> 