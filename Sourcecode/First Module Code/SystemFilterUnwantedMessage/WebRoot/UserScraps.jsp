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
	color: aqua;
}
</style>
	</head>

	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="920" height="634" cellspacing="0" cellpadding="0"
			align="center" border="1">

			
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" valign="top">

					<table align="center" width="500" bgcolor="#01DFD7">
						<tr>
							<td>
								<form action="./PostScrapAction" method="post" name="postscrap">
									<table>
										<tr>
											<td>
												<font color=red>Write Scrap To <%=user%></font>
												<input type=hidden name="recpnt" value="<%=user%>">
												<input type=hidden name="sender"
													value="<%=(String) session.getAttribute("ownuser")%>">
												<input type=text name="sbody">
												<input type="submit" name="submit" value="send">
											</td>
										</tr>
									</table>
								</form>

								<%
									if (!user.equals((String) session.getAttribute("ownuser"))) {
								%>
								<a href="UserHome.jsp?auser=<%=user%> "
									style="text-decoration: none;"><font color="red">Home
								</font> </a> 
								<a href="UserHome.jsp?auser=<%=user%>"><font color="red"
									style="text-decoration: none;"><%=user%></font> </a>
								<%
									}
								%>
							</td>
						</tr>
						<%
							int s = new UserDAO().getScrapCount(user);
						%>

						<tr>
							<td colspan="2" align="left" bgcolor="gray">
								<span class="p">Scrap Book(<%=s%>)</span>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<%
									if ((String) session.getAttribute("ownusr") != null
											&& !user.equals((String) session.getAttribute("ownuser"))) {
								%>

								<%
									}
								%>
							</td>
						</tr>
						<%
							ArrayList<UserBean> slist = new UserDAO().getScraps(user);
							int count = 0;
							if (!slist.isEmpty()) {
								for (UserBean ubean : slist) {
									String sender = ubean.getSender();
									System.out.println("Sender:" + sender);
						%>
						<tr>
							<td>
								<img src="./Userimages/<%=ubean.getSender()%>.jpg" align="left"
									width="60" height="60" alt="ClickToGo" />
								&nbsp;&nbsp;&nbsp;&nbsp;:<%=ubean.getSender()%><br>
								&nbsp;&nbsp;&nbsp;&nbsp;:<%=ubean.getScrap()%>

							</td>
							<td align="right" valign="top">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=ubean.getSdop()%><br>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<%
									if (user.equals((String) session.getAttribute("ownuser"))) {
								%>
								<a
									href='./DeleteScrapAction?sid=<%=ubean.getSid()%>&ssender=<%=ubean.getSender()%>&user=<%=user%>'
									style="text-decoration: none;">Delete</a>
								<%
									}
								%>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<a
									href='ReplyScrap.jsp?sendto=<%=ubean.getSender()%>&c=<%=ubean.getSid()%>&auser=<%=user%>'
									style="text-decoration: none;">Reply</a>
								<br>
								<font color="red"> <%
 	if (request.getParameter("status") != null
 					&& request.getParameter("status").equalsIgnoreCase(
 							"success")) {
 				out.println("your scrap posted into " + sender
 						+ "'s scrap book successfully");
 			} else {
 				out
 						.println("sorry you are not allowed to put this scrap");
 			}
 %> </font>
							</td>
						</tr>
						<%
							}
								count++;
							}
						%>
					</table>
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
