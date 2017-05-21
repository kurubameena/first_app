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
	<%
		String user = (String) session.getAttribute("auser");
		System.out.println(user);
	%>
	<body>

		<div id="menu">
			<ul class="menu">

				<li>
					<a href="./AdminHome.jsp" class="parent"><span>Home</span>
					</a>
				</li>
			

<li>
					<a href="#" class="parent"><span>ViewUsers</span> </a>

					<div>
						<ul>
							<li>
							<a href="./ViewAllAccounts.jsp">ViewUsers</a>
						</li>
						</ul>
					</div>

				</li>
				
				<li>
					<a href="#" class="parent"><span>AddWord</span> </a>
					<div>
						<ul>
							<li>
								<a href="./addword.jsp">Add Bed Word</a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#"><span>FilterMail</span> </a>
					<div>
						<ul>
							<li>
								<a href="./FilterMailAction" class="parent"><span>Filtering Mail Report</span>
								</a>

							</li>
						</ul>
					</div>
				</li>
				
				
				
				<li>
					<a href="#" class="parent"><span>BlackList</span> </a>

					<div>
						<ul>
							<li>
							<a href="./BlackListMailAction">Black List Mail</a>
						</li>
						</ul>
					</div>

				</li>
				<li>
					<a href="#" class="parent"><span>MessageReport</span> </a>

					<div>
						<ul>
							<li>
							<a href="MessageReport.jsp">Mail Report</a>
						</li>
						</ul>
					</div>

				</li>
				
				<!--<li>
					<a href="#" class="parent"><span>Security</span> </a>

					<div>
						<ul>
							<li>
							<a href="ChangePassword.jsp">ChangePassword</a>
						</li>
						</ul>
					</div>

				</li>

				--><li>
					<a href="#" class="parent"><span>Profile</span> </a>

					<div>
						<ul>
							<li>
							<a href="AdminProfile.jsp">ViewProfile</a>
							<a href="ChangePassword.jsp">ChangePassword</a>
						</li>
						</ul>
					</div>

				</li>


				
				<li class="last">
					<a href="./LogoutAction"><span>Logout</span> </a>
				</li>

             
			</ul>
		</div>

		<div id="copyright">
			<a href="http://apycom.com/"></a>
		</div>


	</body>
</html>