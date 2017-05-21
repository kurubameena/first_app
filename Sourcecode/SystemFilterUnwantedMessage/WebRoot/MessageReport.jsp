<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.daoimpl.MailDaoImpl"%>
<%@page import="com.socialnet.bean.MailDTO"%>
<%
	String user = request.getParameter("auser");
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
	document.location.href = "./MessageReport.jsp?auser=" + user + "&hint="
			+ hint;
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="930" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="170"
					width="170" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" id="target" nowrap="nowrap" height="" width="500"
					valign="top">
					<form name="search" method='post'>
						<table align="center" bgcolor="F2F2E8" border="0" width="500">
							<tr></tr>
							<%
								ArrayList<MailDTO> flist = new MailDaoImpl().getAllMessageList(user,
										hint, request.getRealPath("./Userimages"));
							%>
							<tr bgcolor="white">
								<td align="center">
									<font color="blue">Total messages(<%=flist.size()%>)</font>
								</td>
							</tr>
							<tr bgcolor="#EFEFE5">
								<td>
									<font size="3" color="Black">Enter Name:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="text" name="hint" value="">
									<input type=hidden name="user" id="user" value="<%=user%>">
									<input type="button" value="search"
										onClick="return searchFriend(search);">
								</td>
							</tr></br>
							<%
								if (!flist.isEmpty()) {
									for (MailDTO bean : flist) {
							%>
							<tr>
								<td>
									<img src="<%=bean.getPhoto()%>" width="50" height="50">
									&nbsp;&nbsp;&nbsp;
									<a href='UserHome.jsp?auser=<%=bean.getFrommailid()%>'
										style="text-decoration: none;"><%=bean.getFrommailid()%></a>
									<br>
									
									
									<font size="3" color="red">Message:</font>&nbsp;&nbsp;<font size="3" color="#0000FF"><%=bean.getMessage()%></font>
									
									</br>
									
									<font size="3" color="red">Date:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3" color="##0000FF"><%=bean.getMaildate()%></font>
								</td>
							
									
									
								
									
									
								
								
							</tr>
							<%
								}
								}
							%>
						</table>
					</form>
				</td>
				
			</tr>
		</table>
	</body>
</html>
