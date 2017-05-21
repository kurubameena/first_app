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
	userbean = ud.getUserPersonal(user);
	String color = userbean.getColor();
	String build = userbean.getBuild();
	String looks = userbean.getLooks();
	String bestlook = userbean.getBestlook();
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
	font-size: 22px;
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
		<body bgcolor='#1CACE9'>
			<jsp:include page="./index.jsp"></jsp:include>
			<table width="980" height="500" cellspacing="0" cellpadding="0"
				align="center" border="0">
				<tr>
					<td align="left" id="leftmenu" nowrap="nowrap" height="300"
						width="150" valign="top">
						<jsp:include page="LeftMenu.jsp" flush="true">
							<jsp:param name="auser" value="<%=user%>" />
						</jsp:include>
					</td>
					<td align="center" id="target" nowrap="nowrap" height="400"
						width="400">

						<form action="./UpdatePersonalDetailsAction" method="post"
							name="personal" onSubmit="return ValidateForm(personal);">
							<table cellspacing="1" cellpadding="0" border="1" width="400"
								height="">
								<tr>
									<td colspan="2" align="center">
										<span class=title2>Your Personal Details</span>
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
										<span class="p">FirstName</span>
									</td>
									<td>
										<input type="text" name="firstname"
											value=<%=userbean.getFirstname()%>>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Height </span>
									</td>
									<td>
										<input type="text" name="height"
											value=<%=userbean.getHight()%>>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Colour </span>
									</td>
									<td>
										<select name="color">
											<option value=<%=color%>><%=color%></option>
											<option value="above average">
												Above average
											</option>
											<option value="white">
												White
											</option>
											<option value="black">
												Black
											</option>
											<option value="normal">
												Normal
											</option>
											<option value="no answer">
												No Answer
											</option>
										</select>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Build </span>
									</td>
									<td>
										<select name="build">
											<option value=<%=build%>><%=build%></option>
											<option value="slim">
												Slim
											</option>
											<option value="fat">
												Fat
											</option>
											<option value="large">
												Large
											</option>
											<option value="short">
												Short
											</option>
											<option value="no answer">
												-NoAnswer-
											</option>
										</select>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Looks </span>
									</td>
									<td>
										<select name="looks">
											<option value=<%=looks%>><%=looks%></option>
											<option value="atractive">
												Attractive
											</option>
											<option value="very attractive">
												Very Attractive
											</option>
											<option value="beauty context winner">
												BeautyContext Winner
											</option>
											<option value="not good">
												NotGood
											</option>
											<option value="nothing">
												-NoAnswer
											</option>
										</select>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">BestLook </span>
									</td>
									<td>
										<select name="bestlook">
											<option value=<%=bestlook%>>
												<%=bestlook%></option>
											<option value="my eyes">
												My Eyes
											</option>
											<option value="body structure">
												My Body Structure
											</option>
											<option value="my lips">
												My lips
											</option>
											<option value="my hair">
												My Hair
											</option>
											<option value="my walk">
												Walk
											</option>
											<option value="nothing">
												-Nothing-
											</option>
										</select>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">AboutMe </span>
									</td>
									<td>
										<textarea name="aboutme" cols="20" rows="3">
          </textarea>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Hobbies </span>
									</td>
									<td>
										<textarea name="hobbies" cols="20" rows="2">
          </textarea>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Habbits </span>
									</td>
									<td>
										<textarea name="habbits" cols="20" rows="2">
          </textarea>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">I Hate </span>
									</td>
									<td>
										<textarea name="ihate" cols="20" rows="2">
          </textarea>
									</td>
								</tr>
								<tr bgcolor="#fffffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">I Like </span>
									</td>
									<td>
										<textarea name="ilike" cols="20" rows="2">
          </textarea>
									</td>
								</tr>
								<tr bgcolor="#ffff0ffff">
									<td align="right" nowrap="nowrap" valign="middle">
										<span class="p">Purpose </span>
									</td>
									<td>
										<textarea name="purpose" cols="20" rows="3">
          </textarea>
									</td>
								</tr>
								<tr></tr>
								<tr>
									<td colspan="2" align="right">
										<input type="hidden" name="auser" value=<%=user%>>
										<input type="submit" name="submit" value="Update">
										&nbsp;&nbsp;&nbsp;
										<input type=button name="discard" value="Back"
											onClick="history.go(-3);return false;" />
									</td>
								</tr>
							</table>
						</form>

					</td>
					<td align="right" id="rightmenu" nowrap="nowrap" height="300"
						width="150" valign="top">
						<jsp:include page="RightMenu.jsp" flush="true">
							<jsp:param name="auser" value="<%=user%>" />
						</jsp:include>
					</td>
				</tr>
			</table>
		</body>
</html>
