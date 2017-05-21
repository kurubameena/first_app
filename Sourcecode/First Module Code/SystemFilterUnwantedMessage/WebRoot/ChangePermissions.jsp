<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>

<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = (String) session.getAttribute("auser");
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
	font-size: 18px;
	font-wight: bold;
	font-style: italic;
	color: black;
}

.p {
	font-family: TimesNewRoman;
	font-size: 14;
	font-wight: bold;
	font-style: normal;
	color: blue;
}
</style>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="980" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>

				<td align="center" id="target" nowrap="nowrap" height="" width="400"
					valign="top">
					<form action="./ChangePermissionAction" method="post"
						name="changeperm">
						<table align="center" border="0" bgcolor="#1CACE9" cellspacing="1"
							cellpadding="1" width="400" height="">
							<tr>
								<td align="center" nowrap="nowrap" colspan="2">
									<font color="red" face="TimesNewRoman" size="4"> <%
 	String status = request.getParameter("status");
 	if (request.getParameter("status") != null)
 		out.println(status);
 %> </font>
								</td>
							</tr><br/><br/><br/><br/><br/>
							<tr>
								<td align='right'>
									&nbsp;
									<font color="red"><b>For ScrapBook </b> </font>&nbsp;:&nbsp;
								</td>
								<td>
									<select name="scraps">
										<option value="public">
											Any One
										</option>
										<option value="private">
											Only MyFriends
										</option>
									</select>
								</td>
							</tr>
							<tr>
								<td align='right'>
									&nbsp;
									<font color="red"><b>For Your Photos </b> </font>&nbsp;:&nbsp;
								</td>
								<td>
									<select name="photos">
										<option value="public">
											View All
										</option>
										<option value="private">
											Only My Friends
										</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="hidden" name="auser" value=<%=user%>>
									<input type="submit" name="change" value="Change">
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

		</table>
	</body>
</html>
