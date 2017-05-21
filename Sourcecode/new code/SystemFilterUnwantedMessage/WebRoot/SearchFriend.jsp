<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@page import="com.socialnet.dao.UserDAO"%>
<%
	String user = (String)session.getAttribute("ownuser");
	String hint = "";
	int score = 0;
	if (request.getParameter("hint") != null) {
		hint = request.getParameter("hint");
	}
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
		<script type="text/javascript">
function searchFriend(search) {
	var hint = document.forms.search.hint.value;
	var user = document.forms.search.user.value;
	document.location.href = "./SearchFriend.jsp?auser=" + user + "&hint="
			+ hint;
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="930" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="170" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" id="target" nowrap="nowrap" height="" width="500"
					valign="top">
					<form name="search" method='post'>
						<table align="center" bgcolor="skyblue" border="0" width="500">
							<tr></tr>
							<%
								ArrayList<UserBean> flist = new UserDAO().getAllUsersList(user,
										hint, request.getRealPath("./Userimages"));
							%>
							<tr bgcolor="white">
								<td align="center">
									<font color="blue">Total Members(<%=flist.size()%>)</font>
								</td>
							</tr>
							<tr bgcolor="skybluess">
								<td>
									Enter Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="text" name="hint" value="">
									<input type=hidden name="user" id="user" value="<%=user%>">
									<input type="button" value="search"
										onClick="return searchFriend(search);">
								</td>
							</tr>
							<%
								if (!flist.isEmpty()) {
									for (UserBean bean : flist) {
							%>
							<tr>
								<td>
									<img src="<%=bean.getPhoto()%>" width="100" height="100">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href='UserHome.jsp?auser=<%=bean.getUserid()%>'
										style="text-decoration: none;"><%=bean.getUserid()%></a>
									<br>
									&nbsp;&nbsp;&nbsp;
									
								</td>
							</tr>
							<%
								}
								}
							%>
						</table>
					</form>
				</td>
				<td align="right" id="rightmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="RightMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user%>" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</body>
</html>
