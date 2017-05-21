<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.daoimpl.MailDaoImpl"%>
<%@page import="com.socialnet.bean.MailDTO"%>
<%
	String user = request.getParameter("auser");
	String hint = user;
	int score = 0;
	if (request.getParameter("hint") != null) {
		hint = request.getParameter("hint");
	}
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	font-size: 20px;
	font-wight: bold;
	font-style: italic;
	color: red;
}

.p {
	font-family: TimesNewRoman;
	font-size: 14;
	font-wight: bold;
	font-style: normal;
	color: blue;
}
</style>
		<script type="text/javascript">
function searchWord(search) {
	var hint = document.forms.search.hint.value;
	var user = document.forms.search.user.value;
	document.location.href = "./MReport.jsp?auser=" + user + "&hint="
			+ hint;
}
</script>
	</head>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		
		<table width="930" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="140"
					width="140" valign="top">
					<jsp:include page="LeftMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>
				<td align="center" id="target" nowrap="nowrap" height="" width="650"
					valign="top">
					
						<table align="center" bgcolor="F2F2E8" border="0" width="650">
							<tr></tr>
							<%
								ArrayList<MailDTO> flist = new MailDaoImpl().getAllMessageList(user,
										user, request.getRealPath("./Userimages"));
							%>
							<tr bgcolor="white">
								<td align="center">
									<font color="#02C5FF">Total messages(<%=flist.size()%>)</font>
								</td>
							</tr>
							
							<%
							
							
							 HashMap<Integer, String> map = new HashMap<Integer, String>();
							 int i=1;
							 String data=null;
								if (!flist.isEmpty()) {
									for (MailDTO bean : flist) {
									
									 data=bean.getMessage();
									 map.put(i, data);
									 i++;
							%>
							<tr>
								<td>
									<img src="<%=bean.getPhoto()%>" width="50" height="50">
									&nbsp;&nbsp;&nbsp;
									<a href='UserHome.jsp?auser=<%=bean.getFrommailid()%>'
										style="text-decoration: none;"><%=bean.getFrommailid()%></a>
										<br>
									
									
									<font size="3" color="red">Subject:</font>&nbsp;&nbsp;<font size="3" color="Green"><%=bean.getSubject()%></font>
									<br>
									
									
									<font size="3" color="red">Message:</font>&nbsp;&nbsp;<font size="3" color="#0000FF"><%=bean.getMessage()%></font>
									
									</br>
									
									<font size="3" color="red">Date:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3" color="##0000FF"><%=bean.getMaildate()%></font>
								</td>
						</tr>
							<%
								}
								}
								
			for(Map.Entry<Integer, String> entry: map.entrySet()) {
            int key = entry.getKey();
            String value = entry.getValue();
             
            System.out.println(key + ": " + value);
        }
        request.setAttribute("map",map);
							%>
							
							<tr bgcolor="#EFEFE5">
							<td></br></br>
    <form action="MReport1.jsp" name="search">
	<center>
	<fieldset>
	<font size="3" color="#003366" >Enter the String: &nbsp; </font>
	<input type="text" id="word" name="word" size="20"/></br> </br> 
	<input type="image"  alt="submit"  src="images/searchf.png" height="50" width="200"></fieldset>
	</center>
	</form>
	</td></tr>
						</table>
					
				</td>
				<td align="right" id="rightmenu" nowrap="nowrap" height="100"
					width="100" valign="top">
					<jsp:include page="RightMenu.jsp" flush="true">
						<jsp:param name="auser" value="<%=user%>" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</body>
</html>
