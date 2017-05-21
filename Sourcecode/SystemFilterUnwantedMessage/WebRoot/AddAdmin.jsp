<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.String"%>
<%@ page session="true"%>
<%@page import="com.socialnet.bean.AdminBean"%>
<%@page import="com.socialnet.dao.*"%>
<%
	String user;
	user = request.getSession().getAttribute("uname").toString();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


		<style type="text/css">
.Title1 {
	font-family: TimesNewRoman;
	font-weight: bold;
	font-size: 25px;
	font-style: italic;
	color: #004080;
}

.Title2 {
	font-family: TimesNewRoman;
	font-weight: bold;
	font-size: 15px;
	font-style: normal;
}
</style>
		<script language="javascript" type="text/javascript">

function goback() {
	history.back();
}
function validateForm(addadmin) {

	if ("" == document.forms.addadmin.newpwd.value) {
		alert("Please enter Password.");
		document.forms.addadmin.newpwd.focus();
		return false;
	}
	if ("" == document.forms.addadmin.newpwd1.value) {
		alert("Please re enter Password.");
		document.forms.addadmin.newpwd1.focus();
		return false;
	}
	if ("" == document.forms.addadmin.newid.value) {
		alert("Please enter admin id.");
		document.forms.addadmin.newid.focus();
		return false;
	}
	if (document.forms.addadmin.newpwd.value != document.forms.addadmin.newpwd1.value) {
		alert(" Password not matched.");
		document.forms.addadmin.newpwd1.focus();
	}

}
function goOn() {
	var admin = document.getElementById("newid");
	var userName = admin.value;
	window.location.href = 'CheckAdminAction?userName=' + userName;
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table color='1F2D62' border="0" width="980" align="center">

			<tr bgcolor="#1CACE9">
				<td nowrap="nowrap">
					<table align="left" bgcolor="#1CACE9" width="200" height="400">
						<tr align="center">
							<%
								String ppath = request.getRealPath("/images");
											UserDAO ud = new UserDAO();
											String s = ud.getPhoto(user, ppath);
											System.out.println("at jsp admin" + s);
							%>
							<td colspan="2">
									<img alt="" src="<%=s%>" height="100" width="100">
								<br>
									<a href="ChangeAdminPoto.jsp" style="text-decoration: none"><font
										color='yellow'><b>ChangePhoto</b> </font> </a>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="AdminProfile.jsp" style="text-decoration: none"><font
										color='red'><b>EditProfile</b> </font> </a>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="ViewAllAccounts.jsp" style="text-decoration: none"><font
										color='blue'><b>ViewAccounts<b>
									</font> </a>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="AddAdmin.jsp" style="text-decoration: none"><font
										color='white'><b>AddAdmin<b>
									</font> </a>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="ChangePassword.jsp" style="text-decoration: none"><font
										color='green'><b>ChangePassword<b>
									</font> </a>
								</td>
							</tr></table>
				</td>
				<td nowrap="nowrap" colspan="6">
					<table bgcolor='#1CACE9'>
						<tr>
							<td colspan="2" align="center" valign="bottom" nowrap="nowrap"
								bgcolor="">
								Add Govt body Details
							</td>
						</tr>
						<tr>
							<td nowrap="nowrap" align="center" valign="middle">
								<form action="./AddAdminAction" method="post" name="addadmin"
									onSubmit="return ValidateForm(addadmin);">
									<table align="center" width="400" height="100">
										<tr>
											<td colspan="2" align="center">
												<font color="1F2D62" face="TimesNewRoman" size="3"> <%
 	String status = request.getParameter("status");
 	if (request.getParameter("status") != null)
 		out.println(status);
 %> </font>
											</td>
										</tr>
										<tr>

											<td align='right'>
												Admin-ID :
											</td>
											<td>
												<%
													if (request.getParameter("userName") != null) {
												%><input type="text" size="" name="newid"
													value='<%=request.getParameter("userName")%>'
													onBlur="javascript:goOn()">
												<%
													} else {
												%><input type="text" size="" name="newid"
													onBlur="javascript:goOn()">
												<%
													}
													if (request.getParameter("astatus") != null) {
														out.println(request.getParameter("astatus"));
													}
												%>
											</td>
										</tr>
										<tr>
											<td align='right'>
												AdminPassword:
											</td>
											<td>
												<input type="password" size=20 name="newpwd" />
											</td>
										</tr>
										<tr>
											<td align='right'>
												ConfirmPassword:
											</td>
											<td>
												<input type="password" size=20 name="newpwd1" />
											</td>
										</tr>
										<tr>
											<td colspan="2" align="center" nowrap="nowrap">
												<input type="submit" name="addadmin" value="Accept">
												<input type=button value="Back" onClick=goback()>
											</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
