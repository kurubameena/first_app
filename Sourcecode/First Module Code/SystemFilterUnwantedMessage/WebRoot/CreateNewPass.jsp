<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String user = request.getParameter("auser");
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'PasswordRecovery.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<style type="text/css">
.Title {
	font-family: Verdana;
	font-weight: bold;
	font-size: 10pt
}

.Title1 {
	font-family: Verdana;
	font-weight: bold;
	font-size: 18pt;
	color: red;
}

.p {
	font-family: TimesNewRoman;
	font-size: 16;
	font-wight: bold;
	font-style: normal;
	color: blue;
}
</style>
		<script type="text/javascript">
function validateForm(changepwd) {
	if ("" == document.changepwd.userid.value) {
		alert("please enter userid value");
		return false;
	}
	if ("select" == document.changepwd.newpwd.value) {
		alert("please select any one Question ");
		return false;
	}
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table align='center'>
			<tr>
				<td align="center">
					<form action="./ChangeNewPassword" method="post" name="changepwd"
						onSubmit="javascript:return validateForm(changepwd);">
						<table align="center" border="0" bgcolor="1F2D62" cellspacing="1"
							cellpadding="1" width="350" height="100">
							<tr>
								<td colspan="2" align="center" valign="bottom" nowrap="nowrap"
									bgcolor="">
									Enter Your New PassWord
								</td>
							</tr>
							<tr>
								<td align="center">
									<span class=title>&nbsp;Enter Your-ID
										&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</td>
								<td align="left">
									<input type="text" size="" name="userid" value="<%=user%>"
										readonly="readonly"></input>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<span class=Title> New Password</span>
								</td>
								<td>
									<input type="text" name="newpwd" size="20" />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="hidden" name="auser" value="<%=user%>">
									<input type="submit" name="change" value="Upadate">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
