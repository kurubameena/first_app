<%@ page language="java" import="java.util.ArrayList"
	pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>

<%@page import="com.socialnet.bean.UserBean"%>
<%@page import="java.util.ArrayList;"%>
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
	font-size: 18px;
	font-wight: bold;
	font-style: italic;
	color: black;
}
</style>

	</head>

	<body bgcolor='#1CACE9'>
		<table width="980" height="500" cellspacing="0" cellpadding="0"
			align="center" border="1">
			<tr>
				<td align="center" colspan="3" valign="bottom" height="150"
					background="./images/header1.jpg">
					<span class="title2"> Hai&nbsp;&nbsp;&nbsp; <%=user%></span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span class="title1">WelCome to MingleSpot</span>
				</td>
			</tr>
			<tr bgcolor="#1E5B91">
				<td align="center" colspan="3" valign="bottom" height="40">
					<jsp:include page="UserOptions.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
			</tr>
			<tr>
				<td align="center" id="target" nowrap="nowrap" height="350"
					width="400">
					<form action="./PostCommentAction" method="get">
						<table border="1" width="550" bgcolor="white">
							<%
								ArrayList<UserBean> alist = new UserDAO().getSawals();
								if (!alist.isEmpty()) {
									for (UserBean bean : alist) {
							%>
							<tr>
								<td bgcolor="white" align="left" bordercolor="black">
									Posted By&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=bean.getUserid()%><br>
									date of posted:<%=bean.getSdop()%><br>
									Sawal:-<%=bean.getSbody()%>
									<br>
									<br>
									Your Comment:-
									<textarea rows="2" cols="20" name="coment" id="coment"></textarea>

									<%
										String status = request.getParameter("status");
												if (status != null)
													out.println(status);
									%>
									<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="hidden" name="sawalid" value=<%bean.getSid();%>>
									<input type="submit" align="right" value="PostComment"
										name="post">
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
					<jsp:include page="RightMenu.jsp"></jsp:include>
				</td>
			</tr>
		</table>
	</body>
</html>
