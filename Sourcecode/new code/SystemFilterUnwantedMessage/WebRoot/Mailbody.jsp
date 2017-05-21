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

		<form id="form1" method='post' action="./SendMailAction" name="register">
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

				     <c:if test="${not empty msgbody}">
					<c:forEach var="mails" items="${msgbody}">
						
						<tr>
							<td >
								<span class="style1"><font color="#055279" size="3">Sender :</font>
							</td>
							<td>
								<input name="mailsub" type="text" id="textfield2" size="48"
									value='${mails.frommailid}' />
							</td>
						</tr>
						<tr>
							<td >
								<span class="style1"><font color="#055279" size="3">Subject :</font>
							</td>
							<td>
								<input name="mailsub" type="text" id="textfield2" size="48"
									value='${mails.mailsub}' />
							</td>
						</tr>
						<tr>
							<td>
								<span class="style1"><font color="#055279" size="3">Mail Matter :</font>
							</td>

							<td>
								<textarea name="mailbody" id="textarea" cols="37" rows="5"
									value=''>${mails.mailbody}</textarea>
							</td>
						</tr>
						<tr>
							<td>
								<span class="style1"><font color="#055279" size="3">Date :</font>
							</td>
							<td align='left'>
					<input name="mailsub" type="text" id="textfield2" size="48"
									value='${mails.maildate}' />
							</td>
								
						</tr>
					</c:forEach>
				</c:if>
				
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
	</body>
</html>
