<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%
	String path = request.getContextPath();
	String user;
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


		<script language="javascript" type="text/javascript">

function goback() {
	history.back();
}
</script>

	</head>

	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<%
			user = (String) session.getAttribute("uname");
		%>

		<table border="0" width="980" height="" align="center">
			<tr>
				<tr>
					<td align="center" valign="bottom" nowrap="nowrap" colspan="7">
						<br>
					</td>
				</tr>


				<tr>
					<td nowrap="nowrap">
						<table height="">
						<tr>
							<td valign="top">
								<table align="left" border="0">
									<tr align="center">
										<%
											String ppath = request.getRealPath("/images");
											UserDAO ud = new UserDAO();
											String s = ud.getPhoto(user, ppath);
											System.out.println("at jsp admin" + s);
										%>
										<td colspan="1" valign="top">
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
											<a href="ChangePassword.jsp" style="text-decoration: none"><font
												color='green'><b>ChangePassword<b>
											</font> </a>
										</td>
									</tr>
								</table>
					</td>
					<td nowrap="nowrap" colspan="7">
						<form action="./ChangePassword" method="post" name="changepwd"
							onSubmit="return ValidateForm(changepwd);">

							<table align="center" border="1" bgcolor="#1CACE9" cellspacing="1"
								cellpadding="1" width="250" height="100">
								<tr>
									<td align="center" color nowrap="nowrap" colspan="2">
										<font color="green" face="TimesNewRoman" size="4"> <%
 	String status = request.getParameter("status");
 	if (request.getParameter("status") != null)
 		out.println(status);
 %> </font>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center" valign="bottom" nowrap="nowrap"
										bgcolor="#1CACE9">
										Enter Your NewPassword
									</td>
								</tr>
								<tr>
									<td>
										Your ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
									</td>
									<td>
										<input type="text" size="" name="oldid" value=<%=user%>
											readonly="readonly"></input>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;EnterNewPassword&nbsp;:&nbsp;
									</td>
									<td>
										<input type="password" size=20 name="newpwd" />
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;Re-EnterPassword&nbsp;:&nbsp;
									</td>
									<td>
										<input type="password" size=20 name="renewpwd" />
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<input type="submit" name="change" value="Upadate">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type=button value="Back" onClick=goback()>
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
				<tr>

				</tr>
		</table>
	</body>
</html>


