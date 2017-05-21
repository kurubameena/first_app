<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String user = request.getParameter("auser");
	System.out.println("in useroptions:" + user);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css">
.tab {
	font-family: arial, verdana, san-serif;
	font-size: 12px;
}

.asd {
	text-decoration: none;
	font-family: arial, verdana, san-serif;
	font-size: 13px;
	color: #4234ff;
}

/*****remove the list style****/
#nav {
	margin: 0;
	padding: 0;
	list-style: none;
}

/*****LI display inline *****/
#nav li {
	float: left;
	display: block;
	width: 90px;
	background: #1E5B91;
	position: relative;
	z-index: 400;
	margin: 0 1px;
}

/*****parent menu*****/
#nav li a {
	display: block;
	padding: 8px 5px 0 5px;
	font-weight: 400;
	height: 20px;
	text-decoration: none;
	color: #0fffff;
	text-align: center;
	color: #ffeecc;
}

#nav li a:hover {
	color: #470020;
}

/* style for default selected value */
#nav a.selected {
	color: #4234ff;
}

/* submenu */
#nav ul {
	position: absolute;
	left: 0;
	display: none;
	margin: 0 0 0 -1px;
	padding: 0;
	list-style: none;
}

#nav ul li {
	width: 90px;
	float: left;
	border-top: 1px solid #fff;
}

/* display block will make the link fill the whole area of LI */
#nav ul a {
	display: block;
	height: 13px;
	padding: 7px 5px;
	color: #ff77
}

#nav ul a:hover {
	text-decoration: underline;
	padding-left: 13px;
}
</style>

		<script type="text/javascript" src="scripts/jquery.js">
</script>

		<script type="text/javascript">
$(document).ready(function() {
	$('#nav li').hover(function() {
		//show its submenu
			$('ul', this).slideDown(350);
		}, function() {
			//hide its submenu
			$('ul', this).slideUp(350);
		});
});
</script>
	</head>

	<body>
		<input type=hidden name=arav value="5*#*#*1*#*#*4*#*#*3*#*#*1*#*#*1">
		<ul id='nav'>
			<li>
				<a
					href='UserHome.jsp?auser=<%=(String) session.getAttribute("ownuser")%>'>Home</a>

				<li>
					<a href='#'> Profile</a>
					<ul>
						<li style='background-color: #b0c4de;'>
							<a href='./ViewContactDetails.jsp?auser=<%=user%>'>Contacts</a>
						</li>
						<li style='background-color: #bebebe;'>
							<a href='./ViewPersonalDetails.jsp?auser=<%=user%>'>Personal</a>
						</li>
						<li style='background-color: #b0c4de;'>
							<a href='./ViewProfessionalDetails.jsp?auser=<%=user%>'>Professional</a>
						</li>
						<li style='background-color: #bebebe;'>
							<a href='./ViewSocialDetails.jsp?auser=<%=user%>'>Social</a>
						</li>
					</ul>
					<li>
						<a href='#'> Security</a>
						<ul>
							<%
								if (user.equals((String) session.getAttribute("ownuser"))) {
							%>
							<li style='background-color: #b0c4de;'>
								<a href='./ChangeUserPassword.jsp?auser=<%=user%>'>ChangePassword</a>
							</li>

							<li style='background-color: #b0c4de;'>
								<a href='./ChangePermissions.jsp?auser=<%=user%>'>ChangePermission</a>
							</li>
							<%
								}
							%>
						</ul>
						<li>
							<a href='UserScraps.jsp?auser=<%=user%>'> Scraps</a>

							<li>
								<a href='UserPhotos.jsp?auser=<%=user%>'> Photos</a>

								<li>
									<a href='ViewFriends.jsp?auser=<%=user%>'>Friends</a>

									<li>
										<a href='SearchFriend.jsp?auser=<%=user%>'> Search</a>
										<li>
											<a href='http://www.googlemaps.com' target="_blank">
												LocalInfo</a>
											<li>
												<a href='./LogoutAction'> LogOut</a>
											</li>
		</ul>

	</body>
</html>
