<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@page import="com.socialnet.dao.UserDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println(basePath + " and " + path);
	String user = (String) session.getAttribute("auser");
	UserBean userbean = new UserBean();
	UserDAO ud = new UserDAO();
	userbean = ud.getUserContacts(user);
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
	font-size: 18px;
	font-wight: bold;
	font-style: italic;
	color: black;
}

.Title2 {
	font-family: TimesNewRoman;
	font-size: 10;
	font-wight: bold;
	font-style: italic;
	color: red;
}

.p {
	text-align: center;
	color: black;
	font-weight: bold;
	font-style: normal;
	font-size: 15px;
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
function ValidateForm(contactdetails) {
	if ("" == document.forms.contactsdetails.firstname.value) {
		alert("please enter data ");
		document.forms.contactsdetails.firstname.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.midlename.value) {
		alert("please enter data ");
		document.forms.contactsdetails.midlename.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.gernder.value) {
		alert("please enter data ");
		document.forms.contactsdetails.gender.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.dob.value) {
		alert("please enter data ");
		document.forms.contactsdetails.dob.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.mobile.value) {
		alert("please enter data ");
		document.forms.contactsdetails.mobile.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.mail.value) {
		alert("please enter data ");
		document.forms.contactsdetails.mail.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.village.value) {
		alert("please enter data ");
		document.forms.contactsdetails.village.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.city.value) {
		alert("please enter data ");
		document.forms.contactsdetails.city.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.state.value) {
		alert("please enter data ");
		document.forms.contactsdetails.state.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.country.value) {
		alert("please enter data ");
		document.forms.contactsdetails.country.focus();
		return false;
	}
	if ("" == document.forms.contactsdetails.pin.value) {
		alert("please enter data");
		document.forms.contactsdetails.pin.focus();
		return false;
	}
}
</script>
	</head>
	<body text='black' bgcolor='1F2D62'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table width="980" height="500" cellspacing="0" cellpadding="0"
			align="center" border="1">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" id="target" nowrap="nowrap" height="400"
					width="400">
					<div
						style="width: 550px; height: 450px; overflow: auto; padding: 4px; border: 1px solid black;">
						<form action="./UpdateContactDetails" method="get"
							name="contactsdetails"
							onSubmit="return ValidateForm(contactdetails);">
							<table cellspacing="1" cellpadding="0" border="0" width="395"
								height="500" bgcolor="1F2D62">
								<tr>
									<td colspan="2" align="center">
										<span class=title2>Your Contact Details</span>
									</td>
								</tr>
								<tr></tr>
								<tr>
									<td colspan="2" align="center">
										<font color="green" face="TimesNewRoman" size="4"> <%
 	String status = request.getParameter("status");
 	if (request.getParameter("status") != null)
 		out.println(status);
 %>
										
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap">
										<span class="p">FirstName </span>
									</td>
									<td>
										<input type="text" maxlength="20" name="firstname"
											value=<%=userbean.getFirstname()%>>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap">
										<span class="p">MiddleName </span>
									</td>
									<td>
										<input type="text" maxlength="20" name="midlename"
											value=<%=userbean.getMidlename()%>>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap">
										<span class="p">LastName </span>
									</td>
									<td>
										<input type="text" maxlength="20" name="lastname"
											value=<%=userbean.getLastname()%>>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap">
										<span class="p">DateOfBirth</span>
									</td>
									<td>
										<input type="text" maxlength="20" name="dob"
											value=<%=userbean.getDob()%> readonly="readonly">
										<a
											href="javascript:show_calendar('document.contactsdetails.dob', document.contactsdetails.dob.value);">
											<img src="images/cal.gif" alt="a" width="18" height="18"
												border="0" /> </a>

									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap">
										<span class="p">Gender </span>
									</td>
									<td>
										<select name="gender" id="gender">
											<option value="" selected="selected">
												--select--
											</option>
											<option value="male">
												male
											</option>
											<option value="female">
												female
											</option>
										</select>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap">
										<span class="p">ContactNo </span>
									</td>
									<td>
										<input type="text" maxlength="20" name="mobile"
											value=<%=userbean.getMobile()%>>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap">
										<span class="p">Email-ID </span>
									</td>
									<td>
										<input type="text" maxlength="50" name="mail"
											value=<%=userbean.getMail()%>>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap">
										<span class="p">Village </span>
									</td>
									<td>
										<input type="text" maxlength="50" name="village"
											value=<%=userbean.getVillage()%>>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap">
										<span class="p">City </span>
									</td>
									<td>
										<input type="text" maxlength="50" name="city"
											value=<%=userbean.getCity()%>>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap">
										<span class="p">State </span>
									</td>
									<td>
										<input type="text" maxlength="50" name="state"
											value=<%=userbean.getState()%>>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap">
										<span class="p">Country </span>
									</td>
									<td>
										<input type="text" maxlength="30" name="country"
											value=<%=userbean.getCountry()%>>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap">
										<span class="p">PinCode </span>
									</td>
									<td>
										<input type="text" maxlength="20" name="pin"
											value=<%=userbean.getPin()%>>
									</td>
								</tr>
								<tr></tr>
								<tr>
									<td colspan="2" align="center">
										<input type="hidden" name="auser" value=<%=user%>>
										<input type="submit" name="submit" value="UPDATE">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type=button name="discard" value="Back"
											onClick="history.go(-2);return false;" />
									</td>
								</tr>
							</table>
						</form>
					</div>
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
