<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'menubeforelogin.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link type="text/css" href="./menu/menu.css" rel="stylesheet" />
		<script type="text/javascript" src="./menu/jquery.js">
</script>
		<script type="text/javascript" src="./menu/menu.js">
</script>
	</head>

	<body>

		<div id="menu">
			<ul class="menu">
				<li>
					<a href="./home.jsp" class="parent"><span>Home</span> </a>
				</li>
				
				<li class="last">
					<a href=""><span></span> </a>
				</li>

				<li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li>
				<li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li>
				<li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li>
				<li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li><li class="last">
					<a href=""><span></span> </a>
				</li>
				
				
				<li>
					<a href="./loginform.jsp" class="parent"><span>Login</span>
					</a>
				</li>
				
			</ul>
		</div>

<div id="copyright"> <a href="http://apycom.com/"></a></div>
	</body>
</html>
