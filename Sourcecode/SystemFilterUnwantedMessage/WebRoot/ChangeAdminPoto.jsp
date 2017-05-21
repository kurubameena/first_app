<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.lang.String"%>
<%@ page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%@ page session="true"%>
<%
	String user;
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
		<script>

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
		<script type="text/javascript">
function ValidatePoto() {
	alert("fdfklj");
	var p = document.getElementById("photo");

if(p.value="")
       {
           alert("Please Mention Path Of the Photo"):
           return false;
        }
      }
    </script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		<%
			user = (String) session.getAttribute("uname");
		%>

		<table border="0" width="980" height="" align="center" cellspacing="2"
			cellpadding="2">
			<tr>
				<td align="center" valign="bottom" bgcolor="#1CACE9" nowrap="nowrap"
					colspan="8">
					<br>
				</td>
			</tr>

			<tr bgcolor="#1CACE9">
				<td nowrap="nowrap">
					<table align="left" border="0" bgcolor="#1CACE9" cellspacing="1"
						cellpadding="1" width="250" height="400">
						<tr align="center">
							<td colspan="2">
								<%
									String ppath = request.getRealPath("/images");
									UserDAO ud = new UserDAO();
									String s = ud.getPhoto(user, ppath);
									System.out.println("at jsp admin" + s);
								%>
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
				<td nowrap="nowrap" colspan="7" valign="top">
					<form action="./ChangeAdminPickAction" method="post"
						name="changepoto" onSubmit="return ValidatePoto();">
						<table align="center" width="350" style="height: 80px;"
							height="100">
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td>
									<font color="red"> <%
 	if (request.getParameter("status") != null)
 		out.println(request.getParameter("status"));
 %> </font>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="left" width="480">
									<br>
									<input type="hidden" name="auser" value="<%=user%>">
									<input type="file" name="photo" size="40">
									<input type='submit' value='change'>
								</td>
							</tr>
						</table>
					</form>

				</td>
			</tr>
			<tr>
			</tr>
		</table>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("changepoto");

frmvalidator.addValidation("photo", "req", "Please select photo");
</script>
	</body>
</html>
