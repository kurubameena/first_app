
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
	<body>
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
			<tr>
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
										
									</tr>
									
								</table>
							</td>
							<td nowrap="nowrap" colspan="4" align="center">
								<h2>
									All user User Information
								</h2>
								</br>
								<form action="/LockingAction" method="post" name="loginaction">
									
										<table width="800" align="center" >
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
																	</td>
																	<td>
																	
																	<a href='UserHome.jsp?auser=<%=userid%>'
																		style="text-decoration: none;"> <font
																		color='BLACK'><b><%=userid%>
																	</a></b>
																	
																	</td>
																	
																	<td>
																	<a href='./UserDeleteAction?uid=<%=userid%>'
																		style="text-decoration: none;"> <font
																		color='RED'><b>Delete
																	</a></b>
																	</td>
																	<td>
																	 <%
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
																			
					
																	%>
																</td>
																<%
																	
																%>
															
														</tr>
														<%
															
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
