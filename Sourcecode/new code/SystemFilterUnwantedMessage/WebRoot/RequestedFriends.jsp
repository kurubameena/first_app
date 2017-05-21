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
					<table align="center" bgcolor="white" border="" width="400">
						<tr>
							<td>
								<%
									if (!user.equals((String) session.getAttribute("ownuser"))) {
								%>
								<a href="UserHome.jsp?auser=<%=user%> "><font color="red">Home
								</font> </a> < &nbsp;
								<a href="UserHome.jsp?auser=<%=user%>"><font color="red"><%=user%></font>
								</a>
								<%
									}
								%>

							</td>
						</tr>
						<%
							ArrayList<UserBean> flist = new UserDAO().getRequestedFriends(user);
						%>
						<tr bgcolor="lightgray">
							<td align="left">
								<font color="blue">Requesting Friends(<%=flist.size()%>)</font>
							</td>
						</tr>
						<%
							if (!flist.isEmpty()) {
								for (UserBean bean : flist) {
						%>
						<tr>
							<td>
								<img src="./Userimages/<%=bean.getUserid()%>.jpg" align="left"
									name="fpoto" border="thickpink" width="70">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href='UserHome.jsp?auser=<%=bean.getUserid()%>'><%=bean.getUserid()%></a>
								<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=bean.getSdesc()%><br>
							</td>
						</tr>
						<%
							if (user.equals((String) session.getAttribute("ownuser"))) {
						%>
						<tr>
							<td align="center">
								<a
									href='./AddFriendAction?auser=<%=user%>&requser=<%=bean.getUserid()%>'>Accept</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a
									href='./RejectFriendAction?auser=<%=user%>&requser=<%=bean.getUserid()%>'>Reject</a>
							</td>
						</tr>
						<%
							}
								}
							}
						%>
					</table>
				</td>
				<td align="right" id="rightmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					.<jsp:include page="RightMenu.jsp" flush="true"><jsp:param
							name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</body>
</html>
