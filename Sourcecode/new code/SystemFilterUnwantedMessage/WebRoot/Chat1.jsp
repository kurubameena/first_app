<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String user = (String) request.getAttribute("auser");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	if (request.getParameter("t") != null
			&& request.getParameter("t").equals("1")) {
%>
<html>
	<head>
		<meta http-equiv="Refresh" content="5">
		<script type="text/javascript" src="scripts/project.js">
</script>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>
	<body text='black'>
		<jsp:include page="./index.jsp"></jsp:include>

		<%
			String text0 = (String) application.getAttribute("text0");
				String text1 = (String) application.getAttribute("text1");
				String text2 = (String) application.getAttribute("text2");
				String text3 = (String) application.getAttribute("text3");
				String text4 = (String) application.getAttribute("text4");
				String text5 = (String) application.getAttribute("text5");
				String text6 = (String) application.getAttribute("text6");
				String text7 = (String) application.getAttribute("text7");
				out
						.println("<center><table bgcolor='white' width='90%' height='200'>");
				out.println("<tr><td align='left'><font size=2>");
				if (text0 != null) {
					out.println(text0);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text1 != null) {
					out.println(text1);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text2 != null) {
					out.println(text2);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text3 != null) {
					out.println(text3);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text4 != null) {
					out.println(text4);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text1 != null) {
					out.println(text5);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text6 != null) {
					out.println(text6);
				}
				out.println("</font></td></tr>");
				out.println("<tr><td align='left'><font size=2>");
				if (text7 != null) {
					out.println(text7);
				}
				out.println("</font></td></tr>");
				out.println("</table></center>");
		%>
		<%
			} else {
				if (request.getParameter("textarea1") != null) {
					String name = request.getParameter("text1");
					String text0 = (String) application.getAttribute("text0");
					String text1 = (String) application.getAttribute("text1");
					String text2 = (String) application.getAttribute("text2");
					String text3 = (String) application.getAttribute("text3");
					String text4 = (String) application.getAttribute("text4");
					String text5 = (String) application.getAttribute("text5");
					String text6 = (String) application.getAttribute("text6");
					String text7 = (String) application.getAttribute("text7");
					application.setAttribute("text7", text6);
					application.setAttribute("text6", text5);
					application.setAttribute("text5", text4);
					application.setAttribute("text4", text3);
					application.setAttribute("text3", text2);
					application.setAttribute("text1", text0);
					application.setAttribute("text2", text1);
					application.setAttribute("text0", " <b>" + name + ":</b>"
							+ request.getParameter("textarea1"));
				}
		%>

		<html>
			<head>
				<body bgcolor='#1CACE9'>
					<form name="form1" method="post" onsubmit="return validateFields()">
						<%
							String loginname = (String) session.getAttribute("auser");
								System.out.println("hai" + loginname);
						%>
						<center>
							<div">
								<%
									if (request.getParameter("text1") != null) {
								%>
								<input type="hidden" name="text1" value="<%=loginname%>" />
								<%
									} else {
								%>
								<input type="hidden" name="text1" value="<%=loginname%>" />
								<%
									}
								%>
								<table align='center'>
									<tr>
										<td>
											<font color='white'> Enter your text Here:</font>
										</td>
										<td>
											<td align='center'>
												<a href="./AdminHome.jsp" target=_top><font color='red'>
														close 
												</a></font>
											</td>
									</tr>
									<tr>
										<td>
											<textarea name="textarea1" rows="2" cols="20"></textarea>
										</td>
									</tr>
									<tr>
										<td>
											<input type="submit" value="submit">
										</td>
									</tr>
								</table>
					</form>
					<script language="javascript">
document.form1.textarea1.focus()
</script>
					<!-- content will go here -->
				</body>
		</html>
		<%
			}
		%>