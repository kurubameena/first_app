<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.String"%>
<%@ page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.AdminBean"%>
<%@page import="com.socialnet.dao.MasterDao"%>
<%
	String user = (String) session.getAttribute("uname");
	MasterDao md = new MasterDao();
	AdminBean abean1 = new AdminBean();
	String user1 = (String) session.getAttribute("uname");
	String pass = (String) session.getAttribute("upass");
	String type = (String) session.getAttribute("utype");
	abean1 = md.getProfile(user1, pass, type);
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
	</head>
	<body bgcolor='skyblue'>
		<jsp:include page="./index.jsp"></jsp:include>
		<table border="0" width="980" height="" align="center" cellspacing="2"
			cellpadding="2">
			<tr>
				<td align="center" valign="bottom" colspan="7">
					<br>
				</td>
			</tr>
			<tr bgcolor="skyblue">
				<td nowrap="nowrap" valign="top" align="center">
					<table height="">
						<tr>
							<td valign="top">
								<table align="left" border="0">
									<tr align="center">
										<%
											String ppath = request.getRealPath("/images");
											UserDAO ud = new UserDAO();
											String s = ud.getPhoto(user, ppath);
											System.out.println("at jsp admin" + s);
										%>
										<td colspan="1" valign="top">
								<img alt="" src="<%=s%>" height="100" width="100">
											<br>
											<a href="ChangeAdminPoto.jsp" style="text-decoration: none"><font
												color='yellow'><b>ChangePhoto</b> </font> </a>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="AdminProfile.jsp" style="text-decoration: none"><font
												color='red'><b>EditProfile</b> </font> </a>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="ViewAllAccounts.jsp" style="text-decoration: none"><font
												color='blue'><b>ViewAccounts<b>
											</font> </a>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="AddAdmin.jsp" style="text-decoration: none"><font
												color='white'><b>AddAdmin<b>
											</font> </a>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="ChangePassword.jsp" style="text-decoration: none"><font
												color='green'><b>ChangePassword<b>
											</font> </a>
										</td>
									</tr>
								</table>
				</td>
				<td nowrap="nowrap" colspan="7" bgcolor="skyblue">
					<form action="./ProfileUpdateAction" method="get"
						name="profileupdate" onSubmit="return validate()">
						<table align="center" border="0" width="648" height="">
							<tr>
								<td colspan="2" align="center">
									<font color="green" face="TimesNewRoman" size="4"> <%
 	String status = request.getParameter("status");
 	if (request.getParameter("status") != null)
 		out.println(status);
 %> </font>
								</td>
							</tr>
							<tr>
								<td align="right">
									*FirstName
									:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="firstname" size="30"
										value=<%=abean1.getFirstname()%>>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td align="right">
									*MidleName
									:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="midlename" size="30"
										value=<%=abean1.getMidlename()%>>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td align="right">
									LastName
									:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="lastname" size="30"
										value=<%=abean1.getLastname()%>>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td align="right">
									*DateOfBirth :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="dob" size="30"
										value=<%=abean1.getDob()%>>
									&nbsp;
									<a
										href="javascript:show_calendar('document.profileupdate.dob', document.profileupdate.dob.value);">
									</a>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td align="right">
									*Qualification :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="qualification" size="30"
										value=<%=abean1.getQualification()%>>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td align="right">
									*University
									:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="university" size="30" maxlength="150"
										value=<%=abean1.getUniversity()%>>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td align="right">
									*MobileContact :&nbsp;
								</td>
								<td>
									<input type="text" name="mobile" size="30"
										value=<%=abean1.getMobile()%>>
								</td>
							</tr>
							<tr>
								<td align="right">
									*Village :&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="village" size="30"
										value=<%=abean1.getVillage()%>>
								</td>
							</tr>
							<tr>
								<td align="right">
									*City : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="city" size="30"
										value=<%=abean1.getCity()%>>
								</td>
							</tr>
							<tr>
								<td align="right">
									*State: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="state" size="30"
										value=<%=abean1.getState()%>>
								</td>
							</tr>
							<tr>
								<td align="right">
									*Country:
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="country" size="30"
										value=<%=abean1.getCountry()%>>
								</td>
							</tr>
							<tr>
								<td align="right">
									*Pin Code: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td>
									<input type="text" name="pin" size="30"
										value=<%=abean1.getPin()%>>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td colspan="2" align="center" nowrap="nowrap">
									<input type="submit" name="changedetails" value="Update">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
									<a href="#" onclick="history.back();return false;"
										style="text-decoration: none;">BACK</a>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>

		</table>
	</body>
	<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("profileupdate");

frmvalidator.addValidation("firstName", "req", "Please enter your First Name");
frmvalidator.addValidation("firstName", "maxlen=20",
		"Max length for FirstName is 20");
frmvalidator.addValidation("firstName", "alpha",
		" First Name Alphabetic chars only");

frmvalidator.addValidation("midlename", "req", "Please enter your Last Name");
frmvalidator.addValidation("midlename", "maxlen=20", "Max length is 20");
frmvalidator.addValidation("midlename", "alpha",
		" Last Name Alphabetic chars only");

frmvalidator.addValidation("dob", "req", "Please enter your DOB");

frmvalidator.addValidation("mobile", "req");

frmvalidator.addValidation("qualification", "req",
		"Please Enter your qualification");

frmvalidator.addValidation("city", "req", "Please enter your city Name");
frmvalidator.addValidation("state", "req", "Please enter your State Name");
frmvalidator.addValidation("country", "req", "Please enter your Country Name");
frmvalidator.addValidation("pin", "req", "Please enter your pin Number");
</script>

</html>
