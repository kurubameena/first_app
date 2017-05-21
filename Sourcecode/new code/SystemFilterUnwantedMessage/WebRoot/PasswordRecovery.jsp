<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
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
	if ("select" == document.changepwd.squest.value) {
		alert("please select any one Question ");
		return false;
	}
	if ("" == document.changepwd.secans.value) {
		alert("please enter answer value");
		return false;
	}
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<br>
		<br>
		<center>
			<table border='0'>
				<tr>
					<td>
						<form action="./PasswordRecoveryAction" method="post"
							name="changepwd"
							onSubmit="javascript:return validateForm(changepwd);">
							<table align="center">

								<tr>
									<td colspan="2" align="center">
										<h3>
											<b><font color='red'>Enter Your Details to Recover
													PassWord</font> </b>
										</h3>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<%
											String status = request.getParameter("status");
											if (request.getParameter("status") != null)
												out.println(status);
										%>
									</td>
								</tr>
								<tr>
									<td align='right'>
										Enter Your-ID :
									</td>
									<td>
										<input type="text" size="" name="userid"></input>
									</td>
								</tr>
								<tr>
									<td align='right'>
										SecurityQuestion :
									</td>
									<td>
										<font size="3" face="Verdana"> <select name="squest">
												<option value="select" selected="selected">
													--Select One---
												</option>
												<option value="What is your favorite pastime?">
													What is your favorite pastime?
												</option>
												<option value="Who your childhood hero?">
													Who your childhood hero?
												</option>
												<option value="What is the name of your first school?">
													What is the name of your first school?
												</option>
												<option value="Where did you meet your spouse?">
													Where did you meet your spouse?
												</option>
												<option value="What is your favorite sports team?">
													What is your favorite sports team?
												</option>
												<option value="What is your father middle name?">
													What is your father middle name?
												</option>
												<option value="What was your high school mascot?">
													What was your high school mascot?
												</option>
												<option value="What make was your first car or bike?">
													What make was your first car or bike?
												</option>
												<option value="What is your pet name?">
													What is your pet name?
												</option>
											</select> </font>
									</td>
								</tr>
								<tr>
									<td align='right'>

										Security Answer

									</td>
									<td>
										<input type="text" name="secans" value="" size="20" />
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<input type="hidden" name="auser">
										<input type="submit" name="change" value="Submit">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
							</table>
						</form>
					</Td>
				</tr>
			</table>
	</body>
</html>
