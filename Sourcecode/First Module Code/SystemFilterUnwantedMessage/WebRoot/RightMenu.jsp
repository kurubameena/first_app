<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.util.DateWrapper"%>
<%@page session="true"%>
<%@page import="com.socialnet.bean.UserBean;"%>
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
		<head>
			<script type="text/javascript">
function show_prompt() {

	var user = document.getElementById("requser");
	var userid = user.value;
	var ruser = document.getElementById("userid");
	var requser = ruser.value;

	var msg = prompt("Please some welcom note", "hai");
	window.location.href = './RequestFriend?msg=' + msg + '&requser=' + requser
			+ '&userid=' + userid;

}
</script>
		</head>
		<body bgcolor='#02C5FF'>
			<table align="left" border="0">
				<tr>
					<td align="center" valign="top">
						<%
							String ppath = request.getRealPath("/images");
							UserDAO ud = new UserDAO();
							String s = ud.getPhoto(user, ppath);
							System.out.println(s);
							if (s != null) {
						%><img src='<%=s%>' height='100' width='100'>
						<%
							} else {
						%>
						<img src="./Userimages/default_avatar.png" height="137"
							width="148">
						<%
							}
						%>
					</td>
				</tr>
				<tr>
					<%
						if (user.equals((String) session.getAttribute("ownuser"))) {
					%>
					<td align="center" bgcolor="#055279">
						<a
							href='ChangePhoto.jsp?auser=<%=(String) session.getAttribute("ownuser")%>'
							style="text-decoration: none;"><font color='red' size="2">Change Photo</font></a>
					</td>
					<%
						} else {
					%>
					<td align="center" bgcolor="#055279">
						<input type="hidden" id="requser"
							value="<%=(String) session.getAttribute("ownuser")%>">
						<input type="hidden" id="userid" value="<%=user%>">
						<a href='UserHome.jsp?auser=<%=user%>#'
							onClick="javascript:show_prompt();"
							style="text-decoration: none;"><font color='yellow'>
								Add Me</font> </a>
					</td>
					<%
						}
					%>
				</tr>
				
				<tr>
					<td><jsp:include page='Req_Friends.jsp?&auser=<%=user %>'></jsp:include>
					</td>
				</tr>
				<tr>
					<td>
						<table border="">
							<tr>
								<td align="center" bgcolor="#055279">
									<font color='yellow' size="2">Up-coming Birthdays</font>
								</td>
							</tr>
							<%
								ArrayList<UserBean> alist = new UserDAO().getBirthdays(user);
								if (!alist.isEmpty()) {
									for (UserBean bean : alist) {
							%>
							<tr>
								<td align="center" bgcolor="#055279">
									<font color=red> <%=bean.getMidlename()%><br> <%=bean.getDob()%><br>
									</font>
								</td>
							</tr>
							<tr>
								<td align="center" bgcolor="#055279">
									<%
										if (user.equals((String) session.getAttribute("ownuser"))) {
									%>
									<a href='UserHome.jsp?auser=<%=bean.getUserid()%>'
										style="text-decoration: none;"><font color='yellow' size="3">Wish</font>
									</a>
									<%
										}
									%>
								</td>
							</tr>
							<%
								}
								} else {
							%>
							<tr>
								<td align="center" bgcolor="#055279">
									<font color="red"><font color='yellow' size="2"> No
											Birthdays Soon</font>
								</td>
							</tr>
							<%
								}
							%>
						</table>
					</td>
				</tr>
				<%
					if (user.equals((String) session.getAttribute("ownuser"))) {
				%>
				<tr>
					<td align="center" bgcolor="#055279">
						<A href='RequestedFriends.jsp?auser=<%=user%>'
							style="text-decoration: none;"><font color='yellow' size="2"> 
								Friends Requested </font> </A>
					</td>
				</tr>
				<%
					}
				%>
			</table>
		</body>
</html>
