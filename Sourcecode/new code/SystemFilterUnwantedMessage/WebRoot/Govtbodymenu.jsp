<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>stu nicholls dot com | menu - Professional dropline #2
		</title>
		<link rel="stylesheet" media="all" type="text/css"
			href="menu/pro_left_right.css" />
		<!--[if lte IE 6]>
<link rel="stylesheet" media="all" type="text/css" href="menu/pro_left_right_ie6.css" />
<![endif]-->
	</head>
	<%
		String user = (String) session.getAttribute("auser");
		System.out.println(user);
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
	<body>
		<div id="pro_linedrop">
			<ul class="select">
				<li class="lrt">
					<a href="./LogoutAction"><b>logout</b> </a>
				</li>
				<li class="line lrt">
					<a href="#nogo"><b class="arrow">Security</b> <!--[if IE 7]><!-->
					</a>
					<!--<![endif]-->
					<!--[if lte IE 6]><table><tr><td><![endif]-->
					<ul class="sub rt">
						<li>
							<a href="ChangePassword.jsp">ChangePassword</a>
						</li>
					</ul>
					<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
				<li class="line lrt">
					<a href="#nogo"><b class="arrow">Profile</b> <!--[if IE 7]><!-->
					</a>
					<!--<![endif]-->
					<!--[if lte IE 6]><table><tr><td><![endif]-->
					<ul class="sub rt">
						<li>
							<a href="#nogo"></a>
						</li>
						
						<li>
							<a href="AdminProfile.jsp">ViewProfile</a>
						</li>
					</ul>
					<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>


				<li class="line lrt">
					<a href="#nogo"><b class="arrow">Accounts</b> <!--[if IE 7]><!-->
					</a>
					<!--<![endif]-->
					<!--[if lte IE 6]><table><tr><td><![endif]-->
					<ul class="sub rt">
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="./ViewAllAccounts.jsp">ViewAccounts</a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
					</ul>
					<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
				<li>
					<a href="./UserScraps.jsp?auser=<%=user%>"><b>scarps</b> </a>

				</li>
				<li>
					<a href="./UserPotos.jsp?auser=<%=user%>"><b>photos</b> </a>
				</li>
				<li>
					<a href="ViewFriends.jsp?auser=<%=user%>"><b>friends</b> </a>
				</li>
				<li>
					<a href="SearchFriend.jsp"><b>search</b> </a>
				</li>
				<li>
					<a href="DisscussionForum.jsp"><b>Forum</b> </a>
				</li>
				<li class="line lrt">
					<a href=""><b></b> <!--[if IE 7]><!--> </a>
					<!--<![endif]-->
					<!--[if lte IE 6]><table><tr><td><![endif]-->
					<ul class="sub rt">
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
						<li>
							<a href="#nogo"></a>
						</li>
					</ul>
					<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
			</ul>
		</div>
		<br />
	</body>
</html>
