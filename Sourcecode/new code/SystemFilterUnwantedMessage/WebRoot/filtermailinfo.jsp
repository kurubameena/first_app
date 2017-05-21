<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.String"%>
<%@ page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String user;
	user = (String) session.getAttribute("auser");
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
		<table border="0" width="1200" align="center">
			<tr>
				<td nowrap="nowrap" colspan="7" valign="top" align="left">
					
					
								
							
					<table align="center" border="" width="1200">
						
						</br>
						
						
						
				<tr bgcolor='cyan'>
					

					<td align='center' width='100'>
						<b>SenderID</b>
					</td>
					<td align='center' width='100'>
						<b>ReciverID</b>
					</td>

					<td align='center' width=100'>
						<b>Subject...</b>
					</td>
					
					<td align='center' width='400'>
						<b>Message.......................</b>
					</td>
					<td align='center' width='200'>
						<b>CorrectWords........</b>
					</td>

					<td align='center' width='200'>
						<b>BadWords................</b>
					</td>
					<td align='center' width='200'>
						<b>CapitalWords..............</b>
					</td>
					<td align='center' width='20'>
						<b>T_C</b>
					</td>
					<td align='center' width='20'>
						<b>P_C</b>
					</td>

					<td align='center' width='20'>
						<b>E_M</b>
					</td>
					<td align='center' width='20'>
						<b>Q_M</b>
					</td>
					<td align='center' width='200'>
						<b>Date............</b>
					</td>
					<td align='center' width='50'>
						<b>SandInfo</b>
					</td>
				</tr>
						
			<c:forEach var="mails" items="${mails}">
					<tr bgcolor='#FFDFDD'>

						<td align='center' width='100'>
							<b> ${mails.senderid}</b>
						</td>

						<td align='center' width='100'>
							<b> ${mails.reciverid}</b>
						</td>
						<td align='center' width='100'>
							<b> ${mails.subject}</b>
						</td>
						<td align='center' width='400'>
							<b> ${mails.message}</b>
						</td>
						<td align='center' width='200'>
							<b> ${mails.cword}</b>
						</td>

						<td align='center' width='200'>
							<b> ${mails.bword}</b>
						</td>
						<td align='center' width='200'>
							<b> ${mails.cpword}</b>
						</td>
						<td align='center' width='20'>
							<b> ${mails.tc}</b>
						</td>
						<td align='center' width='20'>
							<b> ${mails.pc}</b>
						</td>
						<td align='center' width='20'>
							<b> ${mails.em}</b>
						</td>
						<td align='center' width='20'>
							<b> ${mails.qm}</b>
						</td>
						<td align='center' width='200'>
							<b> ${mails.maildate}</b>
						</td>
						
						<td align='center' width='50'>
						<b> <a
								href="./FilterSendMailAction?filtermailid=${mails.messageid}&senderid=${mails.senderid}&reciverid=${mails.reciverid}&subject=${mails.subject}&message=${mails.cword}">${mails.sendinfo}</a>
							</b>
						
						</td>
						
					</tr>
				</c:forEach>
                  
                  
                </table>
</td>
						</tr>
					</table>
				
	</body>
</html>


