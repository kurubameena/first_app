<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
	font-weight: bold;
	font-size: 15px;
	font-style: normal;
}
</style>
	</head>

	<body bgcolor='#02C5FF'>
		<table align="left" width="100" height="200" border="0">
			

			
			<tr>
				<td align="center" bgcolor="#055279">

					<A href='SearchFriend.jsp?auser=<%=user%>'
						style="text-decoration: none;"><font color="red" size="3">Seach</font> </A>

				</td>
			</tr>
			
			<tr>
				<td align="center" bgcolor="#055279">

					<A href='ViewFriends.jsp?auser=<%=user%>'
						style="text-decoration: none;"><font color="red" size="3">Friends</font> </A>

				</td>
			</tr>
			
			
			<tr>
				<td align="center" bgcolor="#055279">

					<a href='./UserScraps.jsp?auser=<%=user%>' style="text-decoration: none;"><font color="red" size="3">Scarps</font> </a>
				</td>
			</tr>
			
			
			<tr>
				<td align="center" bgcolor="#055279">

					<a href="./UserPotos.jsp?auser=<%=user%>" style="text-decoration: none;"><font color="red" size="3">Photo</font> </A>

				</td>
			</tr>
			
			
			
			
			
		</table>
	</body>
</html>
