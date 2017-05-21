<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<center>
<div id="main">
<!-- header begins -->
<div id="header">
	<div id="logo">
        
       <br/><br/>
                      <center><font size="5" color="#003366">System Filter Unwanted Message</font></center></div>
		<%
			try {
				if (session.getAttribute("utype").equals("admin")) {
		%>
		<jsp:include page="./adminmenu.jsp"></jsp:include>
		<%
			} else if (session.getAttribute("utype").equals("Govtbody")) {
		%>
		<jsp:include page="./usermenu.jsp"></jsp:include>
		<%
			} else if (session.getAttribute("utype").equals("user")) {
		%>
		<jsp:include page="./usermenu.jsp"></jsp:include>
		<%
			} else {
		%>
		<jsp:include page="./menubeforelogin.jsp"></jsp:include>
		<%
			}
			} catch (NullPointerException e) {
		%>
		<jsp:include page="./menubeforelogin.jsp"></jsp:include>
		<%
			}
		%>
		<center>
			<font color="red"><b> <%
 	if (request.getParameter("alert") != null) {
 		out.println(request.getParameter("alert"));
 	}
 %>
			</b> </font>

		</center>



</div>
</div></center>
</body>
</html>
