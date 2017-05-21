<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = (String)session.getAttribute("ownuser");
	String ppath = request.getRealPath("/Userimages");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
	</head>
	<body>
		<jsp:include page="index.jsp"></jsp:include>

		<form method='post' action="./AddWordAction" name="event" onsubmit="return validate()">
			<table width="920" height="500" align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>

				<td align="center" id="target" nowrap="nowrap" height="" width="600"
					valign="top">
					<table align="center" bgcolor="pink" border="" width="600">
</br></br></br>
				    <tr>

						<td align='right'>
							Enter word  :
						</td>
						<td>
							<input type="text" name="wordName" value="" />
						</td>
                 
						<td>
							<input type="submit" value="add word" />
						</td>
					</tr>
				
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
		</form>

			<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("event");

frmvalidator.addValidation("wordName", "req", "Please enter word");


</script>

			<br />
			<br />

			


		</body>
</html>