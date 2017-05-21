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
function formCheck(newsawal) {
	if ("" == document.forms.newsawal.shead.value) {
		alert("you must enter sawal head");
		document.forms.newsawal.shead.focus();
		return false;
	}
	if ("" == document.forms.newsawal.sawal.value) {
		alert("you must enter body of the sawal");
		document.forms.newsawal.sawal.focus();
		return false;
	}
	if ("" == document.forms.newsawal.doexp.value) {
		alert("you must enter valid date");
		document.forms.newsawal.doexp.focus();
		return false;
	}
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="916" height="508" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="top">
					<form action="./PostNewSawal" method="get" name="newsawal"
						onSubmit="return formCheck(newsawal);">
						<table>
							<tr>
								<td align='center' colspan='2'>
									<h3>
										Create your Sawal Here
									</h3>
								</td>
							</tr>
							<tr>
								<td align='right'>
									<b>Enter Sawal Head:</b>
								</td>
								<td>
									<input type="text" name="shead" size="30" maxlength="40" />
								</td>
							</tr>
							<tr>
								<td align='right'>
									<b>Enter Your Sawal Body Here :</b>
								</td>
								<td>
									<textarea rows="5" cols="30" id="sawal" name="sawal"></textarea>
								</td>
							</tr>
							<tr><b>
								<td align='right'>
									<b>Enter Date Of Expire:</b>
								</td>
								<td>
									<input type="text" name="doexp" readonly="readonly">
									<a
										href="javascript:show_calendar('document.newsawal.doexp', document.newsawal.doexp.value);">
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
								<td align="center" colspan='2'>
									<input type="hidden" name="auser" value=<%=user%>>
									<input type="submit" name="submit" value="CreateSawal">
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
