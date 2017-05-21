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
	userbean = ud.getSocialDetails(user);

	String humor = userbean.getHumour();
	String mstatus = userbean.getMaritual_status();
	String sexual = userbean.getSexuality();
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
				<td align="center" bgcolor="1F2D62" nowrap="nowrap" height="350"
					width="400" valign="top">
					<form action="./UpdateSocialDetails" name="social" method="post">

						<table align="center" width="400" height="350">

							<tr>
								<td colspan="2" align="center" valign="bottom" nowrap="nowrap">
									<span class="title2">Social Details</span>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" style="font: red size :       8">
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
									<span class=p>MaritualStatus</span>
								</td>
								<td align="left" nowrap="nowrap" valign="bottom">
									<select name="mstatus">
										<option value=<%=mstatus%> selected="selected"><%=mstatus%></option>
										<option value="married">
											Married
										</option>
										<option value="unmarried">
											UnMarried
										</option>
									</select>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Religion</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="relegion"
										value=<%=userbean.getRelegion()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Humor</span>
								</td>
								<td align="left" nowrap="nowrap">
									<select name="humour">
										<option value=<%=humor%> selected="selected"><%=humor%></option>
										<option value="sexy">
											Sexy
										</option>
										<option value="friendly">
											Friendly
										</option>
										<option value="clever">
											Clever
										</option>
										<option value="sacrifice">
											Sacrifice
										</option>
										<option value="noanswer">
											NoAnswer
										</option>
									</select>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Sexuality </span>
								</td>
								<td align="left" nowrap="nowrap">
									<select name="sexuality">
										<option value=<%=sexual%>><%=sexual%></option>
										<option value="straight">
											Straight
										</option>
										<option value="gay">
											Gay
										</option>
										<option value="bisexual">
											Bi-sexual
										</option>
										<option value="noanswer">
											No answer
										</option>
									</select>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Smoking</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="smoking"
										value=<%=userbean.getSmoking()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Drinking</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="20" name="drinking"
										value=<%=userbean.getDrinking()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Opinion On Pets</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="50" name="pets"
										value=<%=userbean.getPets()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Living At</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="50" name="living"
										value=<%=userbean.getLiving()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>NativePlace</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="50" name="native"
										value=<%=userbean.getNativity()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Movies I Like</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="80" name="movies"
										value=<%=userbean.getMovies()%>>
								</td>
							</tr>
							<tr bgcolor="#fffffff">
								<td align="right" nowrap="nowrap">
									<span class=p>Books I Like</span>
								</td>
								<td align="left" nowrap="nowrap" valign="bottom">
									<input type="text" maxlength="80" name="books"
										value=<%=userbean.getBooks()%>>
								</td>
							</tr>
							<tr bgcolor="#ffff0ffff">
								<td align="right" nowrap="nowrap">
									<span class=p>WebSites I Like</span>
								</td>
								<td align="left" nowrap="nowrap">
									<input type="text" maxlength="80" name="websites"
										value=<%=userbean.getWebsites()%>>
								</td>
							</tr>
							<tr></tr>
							<tr>
								<td colspan="2" align="center">
									<input type="hidden" name="auser" value=<%=user%>>
									<input type="submit" name="submit" value="UPDATE" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type=button name="discard" value="Back"
										onClick="history.go(-2);return false;" />
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
var frmvalidator = new Validator("social");

frmvalidator.addValidation("relegion", "req", "Please enter relegion");

frmvalidator.addValidation("smoking", "req", "Please fill the field");

frmvalidator.addValidation("drinking", "req", "Please fill the field");
</script>
</html>
