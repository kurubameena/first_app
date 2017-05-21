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
	userbean = ud.getUserPersonal(user);
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
							<jsp:param name="auser" value="<%=user%>" />
						</jsp:include>
						<br>
					</td>
					<td align="center" id="target" nowrap="nowrap" height="400"
						width="400" valign="top">

						<table cellspacing="1" cellpadding="0" border="0" width="400"
							height="" bgcolor="1F2D62" align="center">
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
							<tr>
								<td colspan="0" align="right">
									<span class=title2>&nbsp;Personal Details</span>
								</td>
								<%
									if (user.equals((String) session.getAttribute("ownuser"))) {
								%>
								<td align="center">
									<a
										href='PersonalDetails.jsp?auser=<%=(String) session.getAttribute("ownuser")%>'>
										<font color='green'>edit</font> </a>
								</td>
								<%
									}
								%>
							</tr>
							<tr>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap" valign="middle">
									FirstName &nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getFirstname()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Height&nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getHight()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Colour &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getColor()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Build &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getBuild()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Looks &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getLooks()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap" valign="middle">
									BestLook &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getBestlook()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap" valign="middle">
									AboutMe &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<div
										style="width: 200px; height: 50Spx; overflow: auto; padding: 4px; border: 1px solid black;">
										<%=userbean.getAboutme()%>
									</div>
									<br>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Hobbies &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<div
										style="width: 200px; height: 50px; overflow: auto; padding: 4px; border: 1px solid black;">
										<%=userbean.getHobbies()%>
									</div>
									<br>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Habbits &nbsp;&nbsp;&nbsp;:
								</td>
								<td
									style="width: 200px; height: 50px; overflow: auto; padding: 4px; border: 1px solid black;">
									<%=userbean.getHabbits()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap" valign="bottom">
									I Hate &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getIhate()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap" valign="middle">
									I Like &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getIlike()%>
									<br>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap" valign="middle">
									Purpose &nbsp;&nbsp;&nbsp;:
								</td>
								<td>
									<%=userbean.getPurpose()%>
									<br>
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
					<td align="right" id="rightmenu" nowrap="nowrap" height="300"
						width="150" valign="top">
						<jsp:include page="RightMenu.jsp" flush="true">
							<jsp:param name="auser" value="<%=user%>" />
						</jsp:include>
						<br>
					</td>
				</tr>
			
			</table>
		</body>
</html>
