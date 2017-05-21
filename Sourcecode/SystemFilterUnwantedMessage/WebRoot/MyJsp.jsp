<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.String"%>
<%@ page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user;
	user = (String) session.getAttribute("uname");
	String path = request.getRealPath("./images");
%>

<html>
	<head>
		<style type="text/css">
.Title1 {
	font-family: TimesNewRoman;
	font-weight: bold;
	font-size: 40px;
	font-style: italic;
	color: ;
}

.Title2 {
	font-family: TimesNewRoman;
	font-weight: bold;
	font-size: 15px;
	font-style: normal;
}
</style>
	</head>
	<body>
		<jsp:include page="./index.jsp"></jsp:include>
		<table border="1" width="980" align="center">
			<tr>
				<td nowrap="nowrap" colspan="7" valign="top" align="center"
					width="980">
					<table align="left" border="0" width="250" height="345">
						<tr align="center">
							<%
								String ppath = request.getRealPath("/Userimages");
								UserDAO ud = new UserDAO();
								ud.getPhoto(user, ppath);
							%>
							<td colspan="1" valign="top">
								<img src="<%=ud.getPhoto(user, ppath)%>" />
								<br>
								<a href="ChangeAdminPoto.jsp" style="text-decoration: none"><font
									color='yellow'><b>ChangePhoto</b> </font> </a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="AdminProfile.jsp" style="text-decoration: none"><font
									color='red'><b>EditProfile</b> </font> </a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="ViewAllAccounts.jsp" style="text-decoration: none"><font
									color='blue'><b>ViewAccounts<b>
								</font> </a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="AddAdmin.jsp" style="text-decoration: none"><font
									color='white'><b>AddAdmin<b>
								</font> </a>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="ChangePassword.jsp" style="text-decoration: none"><font
									color='green'><b>ChangePassword<b>
								</font> </a>
							</td>
						</tr>
					</table>
				</td>
				<td width="600">
					<table width="500" align="center">
						<%
							MasterDao md = new MasterDao();
							ArrayList<UserBean> accountlist = md.getAccountList(path);
							for (UserBean ubean : accountlist) {
								String userid = ubean.getUserid();
								System.out.println("userid :" + userid);
								System.out.println("photo :" + ubean.getPhoto());
						%>
						<tr>
							<td valign="top">
								<table border="0" width="400">
									<tr bgcolor='green'>
										<td align="left" colspan='2' valign="top">
											<center>
												<b>UserId:<%=userid%></b>
										</td>
									</tr>
									<tr>
										<td align="left" valign="middle" nowrap="nowrap">
											<img src="<%=ubean.getPhoto()%>" height='50' width='50'>
										</td>
										<td>
											Account Opened:<%=ubean.getDoj()%>
											<br>
											lock Information:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=ubean.getLockinfo()%>
											<%
												if (!(ubean.getLockinfo().equals("lock"))) {
											%>

											<a href='./LockingAction?uid=<%=userid%>'
												style="text-decoration: none;">Lock</a>
											<%
												} else {
											%>
											<a href='./UnLockingAction?uid=<%=userid%>'
												style="text-decoration: none;">Unlock</a>
											<%
												}
												}
											%>
										
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
