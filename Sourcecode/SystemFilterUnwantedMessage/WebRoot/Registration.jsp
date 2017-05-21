<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println("basepath is:" + basePath);
%>
<html>
	<head>
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
		<script language="JavaScript">

//var x_win = window.self; 

function goOn() {
	if ("" == document.register.userid.value) {
		alert("please enter userid value");
		return false;
	}
	var userName = document.register.userid.value;
	window.location.href = 'CheckUserAction?userName=' + userName;

}
</script>

		<style type="text/css">
.Title {
	font-family: italic;
	font-weight: bold;
	font-size: 8pt color :                                 white;
}

.Title1 {
	font-family: italic;
	font-size: 12pt;
	color: white;
}
</style>

	</head>

	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<center>
			<table border='0'>
				<tr>
					<td align="center">
						<h3>
							<span class=subHead><br>Register Form </font>
						</h3>
						<form action="./RegisterAction" method="get" name="register"
							onSubmit="return validate()">
							<table align="center" border='0' width=70%>
								<tr>
									<td colspan="2" align="center">
										<span class="title1"> <%
 	String alert = request.getParameter("msg");
 	if (request.getParameter("msg") != null)
 		out.println(alert);
 %>
										
									</td>
								</tr>
								<th colspan="6" bgcolor="green">
									Account Details
									<tr></tr>
									<tr>
										<td align='right'>
											<font>UserId :</font>
										</td>
										<td>
											<input type="text" id="userid" name="userid" size="20"
												value="<%if (request.getParameter("userName") != null)
				out.print(request.getParameter("userName"));%>"
												onblur=" javascript:goOn()">
											<%
												if (request.getParameter("status") != null) {
													out.println(request.getParameter("status"));
												}
											%>
										</td>
									</tr>
									<tr>

										<td align='right'>
											PassWord :
										</td>
										</font>
										<td>
											<input type="password" name="userpwd"
												onkeyup="testPassword(document.forms.register.password.value);"
												onChange="Encrypt(document.forms.register.password.value);">
										</td>
									</tr>
									<tr>
										<td align='right'>
											Confirm :
										</td>
										</font>
										<td>
											<input type="password" name="reuserpwd" value="" size="20"
												onBlur="checkconformpassword()" />
										</td>
									</tr>
									<tr>
										<td align='right'>
											SecurityQuestion :
											</font>
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
											Security Answer :
											</font>
										</td>
										<td>
											<input type="text" name="secans" value="" size="20" />
										</td>
									</tr>
									<tr></tr>
									<tr></tr>
									<th colspan="6" bgcolor="green">
										<span class=Title>Personal Details 
									</th>
									<tr></tr>
									<tr></tr>
									<tr>
										<td align='right'>
											First Name :
											</font>
										</td>
										<td width="276">
											<input type="text" name="firstName" value="">
										</td>
									</tr>
									<tr>
										<td align='right'>
											Midle Name :
											</font>

										</td>
										<td width="276">
											<input type="text" name="midlename" value="" size="20" />
										</td>
									</tr>
									<tr>
										<td align='right'>
											Last Name :
											</font>
										</td>
										<td width="276">
											<input type="text" name="lastName" value="" size="20" />
										</td>
									</tr>
									<tr>
										<td align='right'>
											Birth Date :
										</td>
										</font>
										<td>
											<input type="text" name="dob" value="" size="20"
												readonly="readonly" />
											<a
												href="javascript:show_calendar('document.register.dob', document.register.dob.value);">
												<img src="images/cal.gif" alt="a" width="18" height="18"
													border="0" /> </a>
										</td>
									</tr>
									<tr>
										<td align='right'>
											Gender :
											</font>
										</td>
										<td>
											<font size="3" face="Verdana"> <select name="gender">
													<option value="select" selected="selected">
														Select
													</option>
													<option value="Male">
														Male
													</option>
													<option value="Female">
														Female
													</option>
												</select> </font>
										</td>
									</tr>
									<tr></tr>
									<tr></tr>
									<th colspan="6" bgcolor="green">
										<center>
											<span class=Title>Contact Details 
										</center>
										<tr>
											<td align='right'>
												Village :
												</font>
											</td>
											<td>
												<input type="text" name="village" value="" size="20" />
											</td>
										</tr>
										<tr>
											<td align='right'>
												City :
												</font>
											</td>
											<td width="273">
												<input type="text" name="city" value="" size="20" />
											</td>
											<tr>
												<td align='right'>
													State :
													</font>
												</td>
												<td>
													<input type="text" name="state" value="" size="20" />
												</td>
											</tr>
											<tr>
												<td align='right'>
													Country :
													</font>
												</td>
												<td>
													<input type="text" name="country" value="" size="20" />
												</td>
											</tr>
											<tr>
												<td align='right'>
													Pin :
													</font>
												</td>
												<td>
													<input type="text" name="pin" value="" size="20"
														onChange="showStatus()" />
												</td>
											</tr>
											<tr>
												<td align='right'>
													Phone No :
													</font>
												</td>
												<td>
													<input type="text" name="mobile" value="" size="20"
														onBlur="ValidateForm()" />
												</td>
											</tr>
											<tr>
												<td align='right'>
													EMail :
													</font>

												</td>
												<td>
													<input type="text" name="email" value="" size="30" />
													<input type="hidden" name="photo"
														value="<%=request.getRealPath("./Userimages")%>/default_avatar.png" />
												</td>
											</tr>
											<tr>
												<td align='right'>
													Make It :
													</font>

												</td>
												<td>
													<select name="accmode">
														<option value="private">
															Private
														</option>
														<option value="public">
															Public
														</option>
													</select>
											</tr>
											<tr>
												<td colspan="2" align="center">
													<input type="submit" name="register" value="REGISTER ME" />
												</td>
											</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
			</font>
	</body>

	<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("register");

frmvalidator.addValidation("firstName", "req", "Please enter your First Name");
frmvalidator.addValidation("firstName", "maxlen=20",
		"Max length for FirstName is 20");
frmvalidator.addValidation("firstName", "alpha",
		" First Name Alphabetic chars only");

frmvalidator.addValidation("midlename", "req", "Please enter your Last Name");
frmvalidator.addValidation("midlename", "maxlen=20", "Max length is 20");
frmvalidator.addValidation("midlename", "alpha",
		" Last Name Alphabetic chars only");

frmvalidator.addValidation("gender", "dontselect=0");
frmvalidator.addValidation("dob", "req", "Please enter your DOB");

frmvalidator.addValidation("mobile", "req");

frmvalidator.addValidation("mobile", "maxlen=50");
frmvalidator.addValidation("mobile", "numeric");
frmvalidator.addValidation("mobile", "Phone");

frmvalidator.addValidation("city", "req", "Please enter your city Name");
frmvalidator.addValidation("state", "req", "Please enter your State Name");
frmvalidator.addValidation("country", "req", "Please enter your Country Name");
frmvalidator.addValidation("pin", "req", "Please enter your pin Number");

frmvalidator.addValidation("userid", "req", "Please enter your Username");
frmvalidator.addValidation("userpwd", "req", "Please enter your Password");
frmvalidator.addValidation("conformpassword", "req",
		"Please enter your Confirm Password");
frmvalidator.addValidation("secans", "req", "Please enter your Answer");
frmvalidator.addValidation("squest", "dontselect=0");
</script>

</html>
