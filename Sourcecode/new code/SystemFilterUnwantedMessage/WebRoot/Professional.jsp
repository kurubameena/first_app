<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@page import="com.socialnet.dao.UserDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String user = request.getParameter("auser");

	UserBean userbean = new UserBean();
	UserDAO ud = new UserDAO();
	userbean = ud.getUserProfessional(user);
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
	font-size: 15;
	font-wight: bold;
	font-style: italic;
	color: red;
}

.p {
	color: black;
	font-weight: bold;
	font-style: normal;
	font-size: 15px;
}
</style>
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
				<td valign="top" align="center" bgcolor="1F2D62">
					<form action="./UpdateProfessionalDetails" method="post"
						name="professional">
						<table align="center">
							<tr>
								<td colspan="2" align="center" valign="bottom" nowrap="nowrap">
									<span class="title2">Professional Details</span>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center"
									style="font: red size :                     8">
									<%
										String status = request.getParameter("status");
										if (status != null)
											out.println(status);
									%>
								</td>
							</tr>
							<tr>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Qualification</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="qualification"
										value=<%=userbean.getQualification()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>School</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="50" name="school"
										value=<%=userbean.getSchool()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Studied At</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="30" name="loc"
										value=<%=userbean.getLoc()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>University</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="50" name="university"
										value=<%=userbean.getUniversity()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Occupation</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="occupation"
										value=<%=userbean.getOccupation()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Skills</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="skills"
										value=<%=userbean.getSkills()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Interest In</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="interests"
										value=<%=userbean.getInterests()%>>
								</td>
							</tr>
							<tr></tr>
							<tr>
								<td colspan="2" align="center">
									<input type="hidden" name="auser" value=<%=user%>>
									<input type="submit" name="submit" value="Update" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type=button name="discard" value="back"
										onClick="history.go(-3);return false;" />
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

	<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("professional");

frmvalidator.addValidation("qualification", "req",
		"Please enter your Qualification");
frmvalidator.addValidation("school", "req", "Please enter your school name");
frmvalidator.addValidation("loc", "req", "Please enter where aru studying");
frmvalidator.addValidation("university", "req", "Please enter your university");
frmvalidator.addValidation("occupation", "req",
		"Please enter your current occuptaion");
</script>

</html>
