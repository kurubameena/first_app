<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>

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
	font-size: 18px;
	font-wight: bold;
	font-style: italic;
	color: green;
}
</style>

		<script language="JavaScript" src="scripts/gen_validatorv31.js"
			type="text/javascript">
</script>
		<script language="JavaScript" type="text/javascript"
			src="scripts/ts_picker.js">
</script>
		<script language="JavaScript1.1" src="scripts/pass.js">
</script>



		<script type="text/javascript" src="scripts/image.js">
</script>
		<script type="text/javascript" src="scripts/general.js">
</script>
		<script type="text/javascript" src="scripts/adi.js">
</script>
		<script type="text/javascript" src="scripts/form_validation.js">
</script>
		<script language="JavaScript" src="images/javascripts.js">
</script>
		<script language="JavaScript" src="images/pop-closeup.js">
</script>

		<script type="text/javascript">
function formCheck(newpoll) {

	if ("" == document.forms.newpoll.npoll.value) {
		alert("you must enter poll body");
		document.forms.newpoll.npoll.focus();
		return false;
	}
	if ("" == document.forms.newpoll.doexp.value) {
		alert("you must enter valid date");
		document.forms.newpoll.doexp.focus();
		return false;
	}
	if ("" == document.forms.newpoll.op1.value) {
		alert("You must specify option values");
		document.forms.newpoll.op1.focus();
	}
	if ("" == document.forms.newpoll.op2.value) {
		alert("You must specify option value");
		document.forms.newpoll.op2.focus();
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
				<td align="center" valign="middle">
					<form action="./PostNewPoll" method="get" name="newpoll"
						onSubmit="return formCheck(newpoll);">
						<table>
							<tr>
								<td align="center" valign="middle">
									<b>Enter Your Poll Here</b>
								</td>
							</tr>
							<tr>
								<td align="center">
									<textarea rows="5" cols="30" id="npoll" name="npoll"></textarea>
								</td>
							</tr>
							<tr>
								<td>
									Option1:
									<input type="text" name="op1">
								</td>
							</tr>
							<tr>
								<td>
									Option2:
									<input type="text" name="op2">
								</td>
							</tr>
							<tr>
								<td>
									Enter Date Of Expire:
									<input type="text" name="doexp" readonly="readonly">
									<a
										href="javascript:show_calendar('document.newpoll.doexp', document.newpoll.doexp.value);">
										<img src="images/cal.gif" alt="a" width="18" height="18"
											border="0" /> </a>
								</td>
							</tr>
							<tr>
								<td>
									<font color="red"> <%
 	if (request.getParameter("status") != null) {
 		out.println(request.getParameter("status"));
 	}
 %> </font>
								</td>
							</tr>
							<tr>
								<td align="center">
									<input type="hidden" name="user" value=<%=user%>>
									<input type="submit" name="submit" value="CreatePoll">
								</td>
							</tr>
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
