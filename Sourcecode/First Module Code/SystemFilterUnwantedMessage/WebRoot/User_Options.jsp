<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String user = request.getParameter("auser");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
		<LINK href="Welcome tes_files/css.css" type=text/css rel=stylesheet>

		<SCRIPT language=JavaScript>
<!--
function mmLoadMenus() {
  if (window.mm_menu_0717113931_0) return;
            window.mm_menu_0717113931_0 = new Menu("root",161,19,"Verdana",11,"#FFFFFF","#FFFFFF","#3d7eac","#ff9600","left","middle",4,0,300,-5,7,true,false,true,0,true,true);
  mm_menu_0717113931_0.addMenuItem("Personal","location='ViewPersonalDetails.jsp'");
 
   mm_menu_0717113931_0.addMenuItem("Contact","location='ViewContactDetails.jsp'" );
   mm_menu_0717113931_0.addMenuItem("Social","location='ViewSocialDetails.jsp'");
   mm_menu_0717113931_0.addMenuItem("Professional","location='ViewProfessionalDetails.jsp'");
   mm_menu_0717113931_0.hideOnMouseOut=true;
   mm_menu_0717113931_0.bgColor='#CCCCCC';
   mm_menu_0717113931_0.menuBorder=1;
   mm_menu_0717113931_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0717113931_0.menuBorderBgColor='#777777';


  
   window.mm_menu_0717113932_0 = new Menu("root",161,19,"Verdana",11,"#FFFFFF","#FFFFFF","#3d7eac","#ff9600","left","middle",4,0,300,-5,7,true,false,true,0,true,true);
  mm_menu_0717113932_0.addMenuItem("ChangePassword","location='Changepassword.jsp'");
  mm_menu_0717113932_0.addMenuItem("ChangeQuestion","location='Changequestion.jsp'");
  mm_menu_0717113932_0.addMenuItem("ChangePermissions","location='ChangePermisions.jsp'");

   mm_menu_0717113932_0.hideOnMouseOut=true;
   mm_menu_0717113932_0.bgColor='#CCCCCC';
   mm_menu_0717113932_0.menuBorder=1;
   mm_menu_0717113932_0.menuLiteBgColor='#FFFFFF';
   mm_menu_0717113932_0.menuBorderBgColor='#777777';
mm_menu_0717113931_0.writeMenus();
}// mmLoadMenus()
//-->
</SCRIPT>
		<SCRIPT language=JavaScript src="scripts/mm_menu.js"></SCRIPT>
		<META content="MSHTML 6.00.2900.3698" name=GENERATOR>

	</head>

	<body id="options">
		<SCRIPT language=JavaScript1.2>mmLoadMenus();</SCRIPT>
		<script language="JavaScript">
</script>
		<script language="JavaScript" src="scripts/mm_menu.js">
</script>
		<script language="JavaScript1.2">
mmLoadMenus();</script>
		<table border="0">
			<tr align="center" bgcolor="pink">
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<TD width=5>
					&nbsp;
				</TD>
				<td>
					<DIV align=center>
						<A href="UserHome.jsp">Home</A>
					</DIV>
				</TD>
				<td align=center>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td>
						<DIV>
							<A id=link1
								onmouseover="MM_showMenu(window.mm_menu_0717113931_0,0,20,null,'link2')"
								onmouseout=MM_startTimeout(); href="..?" name=link2>Profile</A>
						</DIV>
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td align=center>
						<DIV>
							<A id=link3
								onmouseover="MM_showMenu(window.mm_menu_0717113932_0,0,20,null,'link4')"
								onmouseout=MM_startTimeout(); href="#" name=link4>Securiy</A>
						</DIV>
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td align=center>
						<div>
							<A href="./UserScraps.jsp">Scraps</A>
						</div>
					</td>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td align=center>
						<div>
							<A href="./UserPotos.jsp">Potos</A>
						</div>
					</td>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td>
						<div>
							<a href="SearchFriends.jsp">SearchFriends</a>
						</div>
					</td>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td>
						<div>
							<a href="ViewFriends.jsp">Friends</a>
						</div>
					</td>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<td>
						<div>
							<a href="http://www.googlemaps.com">LocalInfo</a>
						</div>

					</td>
					<TD width=5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<td>
						<div>
							<a href="./LogoutAction">SignOut</a>
						</div>
					</td>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
					<TD width=5>
						&nbsp;
					</TD>
			</tr>
		</table>
	</body>
</html>
