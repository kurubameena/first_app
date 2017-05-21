<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@page import="com.socialnet.dao.UserDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String user = (String) session.getAttribute("auser");

	UserBean userbean = new UserBean();
	UserDAO ud = new UserDAO();

	userbean = ud.getSocialDetails(user);
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
	font-size: 12;
	font-wight: bold;
	font-style: italic;
	color: red;
}

.p {
	color: black;
	font-weight: bold;
	font-style: normal;
	font-size: 15px;
}
</style>
	</head>

	<body bgcolor='#1CACE9' >
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
				<td valign="top" align="center" id="target" nowrap="nowrap"
					height="350" width="400" bgcolor="1F2D62">
					<table align="center" width="400" height="350" border="0">
						<tr>
							<td>
								<%
									if (!user.equals((String) session.getAttribute("ownuser"))) {
								%>
								<a href="UserHome.jsp?auser=<%=user%> "
									style="text-decoration: none;"><font color="red">Home
								</font> </a> < &nbsp;
								<a href="UserHome.jsp?auser=<%=user%>"
									style="text-decoration: none;"><font color="red"><%=user%></font>
								</a>
								<%
									}
								%>
							</td>
						</tr>
						<tr>
							<td colspan="0" align="center" valign="bottom" nowrap="nowrap">
								<span class="title2">Social Details</span>
							</td>
							<%
								if (user.equals((String) session.getAttribute("ownuser"))) {
							%>
							<td align="center">
								<a
									href='SocialDetails.jsp?auser=<%=(String) session.getAttribute("ownuser")%>'
									style="text-decoration: none;"> <font color='green'>edit</font>
								</a>
							</td>
							<%
								}
							%>
						</tr>
						<tr>
						</tr>
						<tr bgcolor="#fffffff">
							<td align="right" nowrap="nowrap">
								MaritualState&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getMaritual_status()%>
							</td>
						</tr>
						<tr bgcolor="#ffff0ffff">
							<td align="center" nowrap="nowrap">
								Religion&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getRelegion()%>
							</td>
						</tr>
						<tr bgcolor="#fffffff">
							<td align="center" nowrap="nowrap">
								Humor&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getHumour()%>
							</td>
						</tr>
						<tr bgcolor="#ffff0ffff">
							<td align="center" nowrap="nowrap">
								Sexuality &nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getSexuality()%>
							</td>
						</tr>
						<tr bgcolor="#fffffff">
							<td align="center" nowrap="nowrap">
								Smoking&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getSmoking()%>
							</td>
						</tr>
						<tr bgcolor="#ffff0ffff">
							<td align="center" nowrap="nowrap">
								Drinking&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getDrinking()%>
							</td>
						</tr>
						<tr bgcolor="#fffffff">
							<td align="center" nowrap="nowrap">
								Opinion On Pets&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getPets()%>
							</td>
						</tr>
						<tr bgcolor="#ffff0ffff">
							<td align="center" nowrap="nowrap">
								<div>
									Living At&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getLiving()%>
							</td>
						</tr>
						<tr bgcolor="#fffffff">
							<td align="center" nowrap="nowrap">
								NativePlace&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getNativity()%>
							</td>
						</tr>
						<tr bgcolor="#ffff0ffff">
							<td align="center" nowrap="nowrap">
								Movies I Like&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getMovies()%>
							</td>
						</tr>
						<tr bgcolor="#fffffff">
							<td align="center" nowrap="nowrap">
								Books I Like&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getBooks()%>
							</td>
						</tr>
						<tr bgcolor="#ffff0ffff">
							<td align="center" nowrap="nowrap">
								WebSites I Like&nbsp;&nbsp;:
							</td>
							<td align="left" nowrap="nowrap">
								<%=userbean.getWebsites()%>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td colspan="2" align="center">
								<input type=button name="discard" value="Back"
									onClick="history.go(-1);return false;" />
							</td>
						</tr>
					</table>
				</td>
				<td align="center" id="rightmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="RightMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</body>
</html>
