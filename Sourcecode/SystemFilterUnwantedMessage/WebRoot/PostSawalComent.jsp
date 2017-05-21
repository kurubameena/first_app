<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>

<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = request.getParameter("auser");
	int i = Integer.parseInt(request.getParameter("c"));
	System.out.println("i:" + i);
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
		<table width="940" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">

			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align0="center" id="target" nowrap="nowrap" height="350"
					width="400">
					<form action="./PostCommentAction" method="post">
						<table border="0" width="580" bgcolor="white">
							<%
								try {
									ArrayList<UserBean> alist = new UserDAO().getSawals();
									if (!alist.isEmpty()) {
										int count = 0;
										for (UserBean bean : alist) {
											int sid = bean.getSid();
							%>
							<tr>
								<td bgcolor="green" align="left" colspan="2">
									<span class="p">Sawaals</span>
								</td>
							</tr>
							<tr>
								<td bgcolor="white" align="left" bordercolor="black" colspan="2">
									<span class="p">Created By &nbsp;&nbsp;&nbsp;&nbsp;:</span><%=bean.getUserid()%><br>
									<span class="p">date of posted:</span><%=bean.getSdop()%><br>
								</td>
							</tr>
							<tr>
								<td>
									<span class="p"> Sawaal
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</td>
								<td align="left">
									<%=bean.getSbody()%></td>
							</tr>
							<%
								try {
												ArrayList<UserBean> clist = new UserDAO()
														.getSawalComments(sid);
												if (!clist.isEmpty()) {
													for (UserBean b : clist) {
							%>
							<tr>
								<td colspan="2">
									<span class="p">from:</span><%=b.getSender()%><br>
									<span class="p">Comment:</span><%=b.getScmnt()%><br>
								</td>
							</tr>
							<%
								}
												}
											} catch (Exception e) {
												System.out.println("exception rised in inner loop");
												e.printStackTrace();
											}
							%>
							<tr>
								<td align="right" colspan="2">
									<a href='PostSawalComent.jsp?sawalid=<%=sid%> & c=<%=count%>'
										style="text-decoration: none;">postcomment</a>
								</td>
							</tr>
							<%
								int s = Integer.parseInt(request
													.getParameter("sawalid").trim());
											int c = Integer.parseInt(request.getParameter("c")
													.trim());
											System.out.println(s);
											System.out.println(c);

											if (s == sid && c == count) {
							%>
							<tr>
								<td colspan="2">
									<textarea rows="2" cols="25" name="scoment"></textarea>
									<input type="hidden" name="user" value=<%=user%>>
									<input type="hidden" name="sawalid" value=<%=s%>>
									<input type="submit" name="submit" value="post" />
								</td>
							</tr>
							<%
								}
											count++;
										}
									}
								} catch (Exception e) {
									System.out.println("exception rised in outer loop");
									e.printStackTrace();
								}
							%>
						</table>
					</form>
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
