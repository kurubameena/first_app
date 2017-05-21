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
	userbean = ud.getUserContacts(user);
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

.Title2 {
	font-family: TimesNewRoman;
	font-size: 10;
	font-wight: bold;
	font-style: italic;
	color: red;
}

.p {
	text-align: center;
	color: black;
	font-weight: bold;
	font-style: normal;
	font-size: 15px;
}
</style>
		<body bgcolor='#1CACE9'>
			<jsp:include page="./index.jsp"></jsp:include>
			<table width="980" height="500" align="center" border="0">
				<tr>
					<td align="left" id="leftmenu" nowrap="nowrap" height="300"
						width="150" valign="top">
						<jsp:include page="LeftMenu.jsp" flush="true">
							<jsp:param name="auser" value="<%=user %>" />
						</jsp:include>
					</td>
					<td align="center" id="target" nowrap="nowrap" height="400"
						width="400">
						<table cellspacing="1" cellpadding="0" border="0" width="500"
							height="" bgcolor="1F2D62">
							<tr>
								<td>
									<%
										if (!user.equals((String) session.getAttribute("ownuser"))) {
									%>
									<a href="UserHome.jsp?auser=<%=user%> "><font color="red"
										style="text-decoration: none;">Home </font> </a> < &nbsp;
									<a href="UserHome.jsp?auser=<%=user%>"
										style="text-decoration: none;"><font color="red"><%=user%></font>
									</a>
									<%
										}
									%>
								</td>
							</tr>
							<tr>
								<td colspan="0" align="right">
									<span class=title2>Contact Details</span>
								</td>
								<%
									if (user.equals((String) session.getAttribute("ownuser"))) {
								%>
								<td align="center">
									<a
										href='ContactDetails.jsp?auser=<%=(String) session.getAttribute("ownuser")%>'
										style="text-decoration: none;"> edit</a>
								</td>
								<%
									}
								%>
							</tr>
							<tr></tr>
							<tr bgcolor="#fffffff">
								<td align="center" nowrap="nowrap" valign="middle"
									bgcolor="#fffffff">
									FirstName&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getFirstname()%>
								</td>
							</tr>
							<tr></tr>
							<tr bgcolor="#ffff0ffff">
								<td align="center" nowrap="nowrap" valign="middle">
									MiddleName&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getMidlename()%>
								</td>
							</tr>
							<tr></tr>
							<tr bgcolor="#fffffff">
								<td align="center" nowrap="nowrap" valign="middle">
									LastName&nbsp;&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getLastname()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#ffff0ffff">
								<td align="center" nowrap="nowrap" valign="middle">
									DateOfBirth&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getDob()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#fffffff">
								<td align="center" nowrap="nowrap" valign="middle">
									Gender&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getSex()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#ffff0ffff">
								<td align="center" nowrap="nowrap" valign="middle">
									ContactNo&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getMobile()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#fffffff">
								<td align="center" nowrap="nowrap" valign="middle">
									Email-ID&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getMail()%>
								</td>
							</tr>
							<tr></tr>
							<tr bgcolor="#ffff0ffff">
								<td align="center" nowrap="nowrap" valign="middle">
									Village&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getVillage()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#fffffff">
								<td align="center" nowrap="nowrap" valign="middle">
									City&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getCity()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#ffff0ffff">
								<td align="center" nowrap="nowrap" valign="bottom">
									State&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getState()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#fffffff">
								<td align="center" nowrap="nowrap" valign="middle">
									Country&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getCountry()%></td>
							</tr>
							<tr></tr>
							<tr bgcolor="#ffff0ffff">
								<td align="center" nowrap="nowrap" valign="middle">
									PinCode&nbsp;&nbsp;:
								</td>
								<td><%=userbean.getPin()%></td>
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
