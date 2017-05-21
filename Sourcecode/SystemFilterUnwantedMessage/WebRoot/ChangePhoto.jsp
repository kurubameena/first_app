<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>

<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = (String) session.getAttribute("ownuser");
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
function ValidatePoto() {
	alert("fdfklj");
	var p = document.getElementById("photo");

if(p.value="")
       {
           alert("Please Mention Path Of the Photo"):
           return false;
        }
      }
    </script>
	</head>

	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="980" height="500" align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" id="target" nowrap="nowrap" height="" width="400"
					bgcolor="" valign="top">
					<form action="./ChangePickAction" method="post" name="changepoto"
						onSubmit="return ValidatePoto();">
						<table align="center" width="400" style="height: 80px;"
							height="100">
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>
									<font color="red"> <%
 	if (request.getParameter("status") != null)
 		out.println(request.getParameter("status"));
 %> </font>
								</td>
							</tr>
							<tr>
								<td valign="top" align="left" width="380">
									<br>
									<input type="hidden" name="auser" value="<%=user%>">
									<input type="file" name="photo" size="40">
									<br>
									<br>
									<input type="submit" name="submit" value="Change">
									<input type=button name="discard" value="Back"
										onClick="history.go(-1);return false;" />
								</td>
							</tr>
						</table>
					</form>
				</td>
				<td align="right" id="rightmenu" nowrap="nowrap" height="300"
					width="150" valign="top"><jsp:include page="RightMenu.jsp"
						flush="true"><jsp:param name="auser"
							value="<%=user %>" />
					</jsp:include>
				</td>
			</tr>
			<tr>
				<td nowrap="nowrap" colspan="3" height="25px" width="980"
					bgcolor="#c0c0c0" valign="bottom" align="center">
				</td>
			</tr>
		</table>
	</body>
</html>
