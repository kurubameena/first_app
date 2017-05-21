<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
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
function formCheck(poll) {
	if ("" == document.forms.poll.optn.value) {
		alert("you must choose any one option");
		document.forms.poll.o1.focus();
		return false;
	}
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="980" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" id="target" nowrap="nowrap" height="" width="400">
					<form action="./PostPollComentAction" method="post" name="poll"
						onSubmit="return formCheck(poll);">
						<table bgcolor="1F2D62" border="1" width="350">
							<tr>
								<td bgcolor="green" align="left" colspan="2">
									<b>Polls</b>
								</td>
							</tr>
							<tr>
								<td align="center" #1CACE9='#1CACE9'>
									<font color='red'>Question</font>
								</td>
								<td align="center">
									<font color='red'>Date</font>
								</td>
							</tr>
							<%
								String polid = request.getParameter("pollid").trim();
								System.out.println("poll id is:" + polid);
								int pid = Integer.parseInt(polid);
								UserBean ubean = new UserDAO().getPollById(pid);
							%>
							<tr>
								<td align="left">
									<%=ubean.getPoll()%>
								</td>
								<td align="right">
									<%=ubean.getSdop()%>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="radio" name="optn" value=<%=ubean.getPoptn1()%>
										checked="checked"><%=ubean.getPoptn1()%><br>
									<input type="radio" name="optn" value=<%=ubean.getPoptn2()%>
										checked="checked"><%=ubean.getPoptn2()%>
								</td>
							</tr>
							<tr>
								<td align="left" colspan="2">
									<textarea cols="25" rows="2" name="pollcoment" id="pollcoment"></textarea>
									<input type="hidden" name="pid" value=<%=pid%>>
									<input type="hidden" name="sender" value=<%=user%>>
									<input type="submit" name="submit" value="PostComment" />
									<br>
									<font color='#1CACE9'> <%
 	if (request.getParameter("pstatus") != null) {
 		out.println(request.getParameter("pstatus"));
 	}
 %> </font>
								</td>
							</tr>
							<tr>
								<td bgcolor="green" align="left" colspan="2">
									<b>Comments on poll</b>
								</td>
							</tr>
							<tr>
								<td>
									<font color='red'>Sender</font>
								</td>
								<td>
									<font color='red'>Comment</font>
								</td>
							</tr>
							<%
								ArrayList<UserBean> clist = new UserDAO().getPollComments(pid);
								if (!clist.isEmpty()) {
									for (UserBean b : clist) {
							%>

							<tr>
								<td>
									<b><%=b.getSender()%> </b>
								</td>
								<td>
									<b><%=b.getScmnt()%></b>
								</td>
							</tr>
							<%
								}
								}
							%>
						</table>
					</form>
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
