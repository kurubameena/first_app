<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>

<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = request.getParameter("auser");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css">
.Title1 {
	font-family: TimesNewRoman;
	font-weight: bold;
	font-size: 30px;
	font-style: italic;
	color: green;
}

.Title2 {
	font-family: TimesNewRoman;
	font-size: 20px;
	font-wight: bold;
	font-style: italic;
	color: red;
}

.p {
	font-family: TimesNewRoman;
	font-size: 14;
	font-wight: bold;
	font-style: normal;
	color: blue;
}
</style>
		<script language="javascript" type="text/javascript">

function validateForm(changepwd) {
	if ("" == document.forms.changepwd.newpwd.value) {
		alert("Please enter Password.");
		document.forms.login.pwd.focus();
		return false;
	} else if (document.forms.changepwd.newpwd.value != document.forms.changepwd.renewpwd.value) {
		alert("Password Not Matched.");
		document.forms.login.pwd.focus();
		return false;
	}

}
</script>

	</head>

	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="980" height="500" cellspacing="0" cellpadding="0"
			align="center" border="1">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>

				<td align="center" id="target" nowrap="nowrap" height="" width="400"
					valign="top">
					<form action="./ChangePasswordAction" method="post"
						name="changepwd"
						onSubmit="javascript:return validateForm(changepwd);">
						<table align="center" border="0" bgcolor="white" cellspacing="1"
							cellpadding="1" width="250" height="100">
							<tr>
								<td align="center" nowrap="nowrap" colspan="2">
									<font color="green" face="TimesNewRoman" size="4"> <%
 	String status = request.getParameter("status");
 	if (request.getParameter("status") != null)
 		out.println(status);
 %> </font>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" valign="bottom" nowrap="nowrap"
									bgcolor="">
									<span class="p">Enter Your NewPassword </span>
								</td>
							</tr>
							<tr>
								<td>
									Your ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
								</td>
								<td>
									<input type="text" size="" name="userid" value=<%=user%>
										readonly="readonly"></input>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;EnterNewPassword&nbsp;:&nbsp;
								</td>
								<td>
									<input type="password" size=20 name="newpwd">
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;Re-EnterPassword&nbsp;:&nbsp;
								</td>
								<td>
									<input type="password" size=20 name="renewpwd">
								</td>
							</tr>

							<tr>
								<td colspan="2" align="center">
									<input type="hidden" name="auser" value=<%=user%>>
									<input type="submit" name="change" value="Upadate">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="#" onclick="history.go(-2);return false;">Back</a>

								</td>
							</tr>
						</table>
					</form>
				</td>
				<td align="right" id="rightmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="RightMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
			</tr>
			<tr>
				<td nowrap="nowrap" colspan="4" height="25px" width="980"
					bgcolor="#c0c0c0" valign="bottom" align="center">
					<marquee direction="right">
						<p>
							MingleSpot Connecting to global MingleSpot
						</p>
					</marquee>
				</td>
			</tr>
		</table>
	</body>
</html>
