
<%
	String user = (String)session.getAttribute("auser");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Refresh" content="50">
		<title>Chat</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type"
			content="text/html; charset=ISO-8859-1">
		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	</head>
	<frameset rows="75%,*%" frameborder='0' framespacing='0'>
		<noframes>
			sorry,you need frames to use chat.
		</noframes>
		<frame name="_display" src="Chat1.jsp?t=1">
		<frame name="_data" src="Chat1.jsp">
	</frameset>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table border="0" width="980" height="" align="center">
			<tr>
				<td align="center" valign="bottom" width="" bgcolor="1F2D62"
					nowrap="nowrap" colspan="7">
					<br>
				</td>
			</tr>
			<tr bgcolor="1F2D62">
				<td nowrap="nowrap" valign="top">
					<table align="left" border="0" bgcolor="1F2D62" cellspacing="1"
						cellpadding="1" width="250" height="400">

						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="AdminProfile.jsp"><font color='yellow'>EditProfile</font>
								</a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="ViewAllAccounts.jsp"><font color='yellow'>ViewAccounts








								
								</a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="AddAdmin.jsp"><font color='yellow'>AddAdmin









								
								</a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="ChangePassword.jsp"><font color='yellow'>ChangePassword</font>
								</a>
							</td>
						</tr>
					</table>
				</td>
				<td nowrap="nowrap" colspan="7">

					<span class="title1">DicussionForum</span>

					<div
						style="width: 550px; height: 450px; overflow: auto; padding: 4px; border: 1px solid black;">
						<table width="400" align="center" bgcolor="lightblue">
							<tr>
								<td width=10 height=600>
									<jsp:include page='./Chat1.jsp'></jsp:include>
								</td>
								<td><jsp:include page='./Chat.jsp'></jsp:include></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
