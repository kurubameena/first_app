<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String user = (String) session.getAttribute("auser");
	System.out.println(user);
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
					<a href="#" class="parent"><span>Profile</span>
					</a>
					<div>
						<ul>
							<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="ViewContactDetails.jsp">Contacts</a>
						</li>
						<li>
							<a href="ViewProfessionalDetails.jsp">Professional</a>
						</li>
						<li>
							<a href="ViewPersonalDetails.jsp">Personal</a>
						</li>
						<li>
							<a href="ViewSocialDetails.jsp">Social</a>
						</li>
							
						</ul>
					</div>
				</li>
				<li>
					<a href="#"><span>Messages</span>
					</a>
					<div>
						<ul>
							<li>
								<a href="./ComposeAppMailAction">Compose Mail</a>
							</li>

								<li>
								<a
									href="./FilterOutboxAction?empid=<%=session.getAttribute("ownuser")%>&requesttype=inbox">Inbox</a>
							</li>
<li>
								<a
									href="./OutboxAction?empid=<%=session.getAttribute("ownuser")%>&requesttype=outbox">Outbox</a>
							</li>
							
						</ul>
					</div>
				</li>
				
				
				
				<li>
					<a href="#"><span>Photos</span>
					</a>
					<div>
						<ul>
							<li>
					<a href="./UserPotos.jsp?auser=<%=user%>"><b>photos</b> </a>
				   </li>
						</ul>
					</div>
				</li>
				
				<li>
					<a href="#"><span>Friends</span>
					</a>
					<div>
						<ul>
							<li>
					<a href="ViewFriends.jsp?auser=<%=user%>"><b>friends</b> </a>
				</li>
						</ul>
					</div>
				</li>
				<li>
					<a href="#"><span>Search</span>
					</a>
					<div>
						<ul>
							<li>
					<a href="SearchFriend.jsp"><b>search</b> </a>
				</li>
						</ul>
					</div>
				</li>
				
				<li>
				<li>
					<a href="#"><span>MessageReport</span>
					</a>
					<div>
						<ul>
							<li>
					        <a href="./MReport.jsp?auser=<%=user%>"><b>Report</b> </a>

				              </li>
				              
						</ul>
					</div>
				</li>
					<a href="#"><span>Security</span>
					</a>
					<div>
						<ul>
							<li>
							<a href="ChangePermissions.jsp">ChangePermissions</a>
						</li>
						<li>
							<a href="ChangePassword.jsp">ChangePassword</a>
						</li>
						</ul>
					</div>
				</li>
				<li class="last">
					<a href="./LogoutAction"><span>Logout</span>
					</a>
				</li>
			</ul>
		</div>

		<div id="copyright">
			<a href="http://apycom.com/"></a>
		</div>


	</body>
</html>