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
<%
	int count = 0;
%>


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
	</head>
	<body>
		<jsp:include page="index.jsp"></jsp:include>
		<center>
		<form name='mails' method='post' action="./DeleteMailsAction">
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

				<tr bgcolor='white'>
					<td></td>


					<td align='center' width='200'>
						<b>MailSubject</b>
					</td>
					<td align='center' width='100'>
						<b>Attachments</b>
					</td>

					<td align='center' width='100'>
						<b>Date</b>
					</td>
				</tr>

				<c:forEach var="mails" items="${mails}">
					<tr>

						<td>
							<input name="ch" type="checkbox" id="checkbox2"
								onClick="check1()" value="${mails.messageid }" />
						</td>

						<td align='center'>
							<b><a
								href="./ViewFIlterMailBody?messageid=${mails.messageid}">${mails.subject
									}</a> </b>
						</td>
						<td align='center'>
							<b> <a
								href="./ViewMailAttachmentAction?messageid=${mails.messageid}&mailbox=${mails.mailbox}">${mails.attachcount}</a>
							</b>
						</td>
						<td align='center'>
							<b> ${mails.maildate}</b>
						</td>
						<input type='hidden' name='mailbox' value='${mails.mailbox}'>
					</tr>
				</c:forEach>
				<tr>
				</tr>
				<tr>
					<td align='center' colspan='8'>
						<input type="submit" value="Delete" />
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
	</body>
</html>
