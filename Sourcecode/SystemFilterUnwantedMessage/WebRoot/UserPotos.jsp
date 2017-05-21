<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>

<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = request.getParameter("auser");
	String ppath = request.getRealPath("/Userimages");
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
function show_prompt(uploadphoto) {
	if ("" = document.forms.uploadphoto.upoto.value) {
		alert("Please Specify Path Of the Photo");
		document.forms.uploadphoto.upoto.focus();
		return false;
	}
}
</script>
	</head>

	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="930" height="500" align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>

				<td align="center" id="target" nowrap="nowrap" height="" width="500"
					valign="top">
					<table align="center" bgcolor="#938E96" border="" width="500">

							<tr></tr>
							<tr>
								<td>
									<%
										if (user.equals((String) session.getAttribute("ownuser"))) {
									%>
									
								</td>
								<td valign="middle">
									<form action="./InsertPickAction" method="post"
										name="uploadphoto"
										onSubmit=" return javascript:show_prompt(uploadphoto)">
										<table>
											<tr>
											<td><font color=white size="3">Upload Photo Here:</font>
											</td>
												<td>
													<input type=file id="upoto" name="upoto">
													
													<input type=hidden id="auser" name="auser"
														value="<%=(String) session.getAttribute("ownuser")%>">
													<input type=hidden id="path" value="<%=ppath%>">
													<input type="submit" name="button" value="Upload">
												</td>
											</tr>
											
										</table>
									</form>
								</td>
								<%
									}
								%>
							</tr>

							<%
								String mode = new UserDAO().getPermissions(user);
								String friend = new UserDAO().getFriendName(user);
								if (mode.equals("public")
										|| user.equals((String) session.getAttribute("ownuser"))
										|| friend != null) {
									ArrayList<UserBean> alist = new UserDAO().getUserPhotos(user,
											ppath);
									if (!alist.isEmpty()) {
										for (UserBean bean : alist) {
							%>
							<tr>
								<td align="left" colspan="0" bgcolor="#f0fffff">
									<img src="<%=bean.getPhoto()%>" width="100" height="100">
									&nbsp;
								</td>
								<td>
									
									<br>
									&nbsp;&nbsp;&nbsp;
									<%
										if (user.equals((String) session
															.getAttribute("ownuser"))) {
									%>
									<a
										href='./DeletePickAction?auser=<%=user%>&potoid=<%=bean.getPotoid()%>'
										style="text-decoration: none;">Delete</a>
									<%
										}
									%>
								</td>
							</tr>
							<%
								}
									}
								} else {
							%>
							<tr>
								<td colspan="2">
									<font color=red size="5">sorry you are not allowed to
										see his/her photos</font>
								</td>
							</tr>
							<%
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
