
<%@page import="java.lang.String"%>
<%@ page session="true"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="java.util.ArrayList" pageEncoding="ISO-8859-1"%>
<%
	String user;
%>
<html>
	<head>
		<style type="text/css">
.Title1 {
	font-family: TimesNewRoman;
	font-weight: bold;
	font-size: 30px;
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
	<body bgcolor='cyan'>
		<jsp:include page="./index.jsp"></jsp:include>
		<%
			user = (String) session.getAttribute("uname");
		%>
		<table border="0" width="980" height="" align="center">
			<tr>
				<td nowrap="nowrap" colspan="7">
					<br>
				</td>
			</tr>
			<tr bgcolor="cyan">
				<td nowrap="nowrap" valign="top">
					<table height="">
						<tr>
							<td valign="top">
								<table align="left" border="0">
									<tr align="center">
										<%
											String ppath = request.getRealPath("/images");
											String path = request.getRealPath("/images");
											UserDAO ud = new UserDAO();
											String s = ud.getPhoto(user, ppath);
											System.out.println("at jsp admin" + s);
										%>
										<td colspan="1" valign="top">
											<img alt="" src="<%=s%>" height="100" width="100">
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
							<td nowrap="nowrap" colspan="7">
								<h2>
									All user Accounts
								</h2>
								<form action="/LockingAction" method="post" name="loginaction">
									<div
										style="width: 550px; height: 450px; overflow: auto; padding: 4px; border: 1px solid black;">
										<table width="400" align="center" bgcolor="#1CACE9">
											<tr>
												<td>
													<table align="center">
														<%
															MasterDao md = new MasterDao();
															ArrayList<UserBean> accountlist = md.getAccountList(path);
															int i = 0;
															for (UserBean ubean : accountlist) {
																String userid = ubean.getUserid();

																if (i == 0) {
														%>
														<tr>
															<td>
																<%
																	} else {
																%>

																<td align="center">
																	<%
																		}
																	%>


																	<img src="<%=ubean.getPhoto()%>" height='70' width='70'>
																	<br>
																	<a href='UserHome.jsp?auser=<%=userid%>'
																		style="text-decoration: none;"> <font
																		color='RED'><b>UserId:<%=userid%>
																	</a></b>
																	<br>
																	<b> <%
 	                                                                if (!(ubean.getLockinfo().equals("lock"))) {
                                                              %> <font color='green'><a href='./LockingAction?uid=<%=userid%>'
                                                              
                                                                          style="text-decoration: none;">Unlock</a> </font> </b>
																	<%
																		} else {
																	%>
																	<font color='red'><a
																		href='./UnLockingAction?uid=<%=userid%>'
																		style="text-decoration: none;">lock</a></b> </font>
																	<%
																		}
																			if (i < 4) {
																				i++;
																	%>
																</td>
																<%
																	} else {
																			i = 0;
																%>
															
														</tr>
														<%
															}
															}
														%>

														</tr>
													</table>
												</td>
											</tr>
										</table>
									</div>
								</form>
							</td>
						</tr>
					</table>
	</body>
</html>
