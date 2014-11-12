<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head><title>www.hrsolutions.com/Change Password</title>
<link rel="stylesheet" href="../css/mystyle.css" type="text/css" />
</head>
<body>
<form action="login" name = "form1" method="post">
<table width="100%" >
<tr>
<td colspan="2">
	<%@ include file="\hrms_header.jsp" %>
</td>
</tr>
<tr >
<td colspan="2">
<table border ="0"  align="center" >
	<tr><td>User Id</td>
    <td align="center" ><input type ="text" name="user_id" id="user_id" value="" /></td></tr>
	<tr><td>User Name</td>
	<td align="center" ><input type ="text" name="user_name" id="user_name" value="" /></td></tr>
	<tr><td>Old Password</td>
	<td align="center" ><input type ="password" name="old_pswd" id="old_pswd" value=""/></td></tr>
	<tr><td>New Password</td><td align="center" >
	<input type ="password" name="new_pswd" id="new_pswd" value="" /></td></tr>
	<tr><td>Retype Password</td><td align="center" >
	<input type ="password" name="retype_pswd" id="retype_pswd" value="" /></td></tr>
	<tr><td colspan="2" align="right">
	<input type ="submit" name="submit" id="submit" value="Submit" />
	<input type="hidden" name="action_submit" id="action_submit" value="login_pswd_change_submit"/>
	</td></tr>
	<%	String msg  = (String)session.getAttribute("lErrorMsg");
	if ( msg != null && msg.length() > 0 ){	%>
		<tr><td colspan="2" align="right">
		<%	out.println("<div class=boldred align=center>"+msg+"</div>"); %>
		</td></tr>
	<% } %>
</table></td>
</tr>
 <tr><td colspan="2"><%@include file="/hrms_footer.jsp"%></td></tr>
</table></form></body></html>


