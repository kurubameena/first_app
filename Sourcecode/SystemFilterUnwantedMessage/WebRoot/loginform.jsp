<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />

		<script language="JavaScript"
			src="<%=request.getContextPath() + "/js/gen_validatorv31.js"%>"
			type="text/javascript">
</script>


		<script type="text/javascript">
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
</head>
<body onload="javascript:disableBackButton()">
<jsp:include page="index.jsp"></jsp:include>
<div id="main">
   <!-- content begins -->
    	<div id="content">
        <div id="content_razd">
        	<div id="right">
            	<div id="log">
                    <h3> Login</h3>
                    <div>
                        <form id="form" method="post" action="./LoginAction" name="login">
                        <fieldset>
                            <label for="text1">Username</label><br />
                            <input id="text1" type="text" name="id" value="" /><br />
                            <label for="text2">Password</label><br />
                            <input id="text2" type="password" name="pwd" value="" />
                            <br />
                            <input type="submit" id="login-submit" value="" />
                        </fieldset>
                        </form>
                    </div>
                    <img src="images/fish_inp.gif" title="" alt="" style="padding-right: 5px; padding-bottom: 2px;"/><a href="./Registration.jsp">Create new account</a><br />
                    <img src="images/fish_inp.gif" title="" alt="" style="padding-right: 5px; padding-bottom: 2px;"/><a href="./PasswordRecovery.jsp">ForgotPassword</a>
                </div>
            	<h1>What Is Social Networking?</h1>
                <div class="tit_bot">
                  <div class="right_b"><span class="col_b">Social Networking. . . It's the way the 21st century communicates today. Want to know what it really means?</span><br />
                    Social networking is the grouping of individuals into specific groups, like small rural communities or a neighborhood subdivision, if you will.  Although social networking is possible in person, especially in the workplace, universities, and high schools, it is most popular online.</div>
                    <div class="more"><a href="#"><img src="images/b_more.gif" alt="" /></a></div>
                  <div class="right_b"><span class="col_b">This is because unlike most high schools, colleges, or workplaces, the internet is filled with millions of individuals</span><br />
                    who are looking to meet other people, to gather and share first-hand information and experiences about cooking, golfing, gardening, developing friendships professional alliances, finding employment, business-to-business marketing and even groups sharing information about baking cookies to the Thrive Movement.  The topics and interests are as varied and rich as the story of our universe.</div>
                    <div class="more"><a href="#"><img src="images/b_more.gif" alt="" /></a></div>
                 </div>   
           </div>   
    <div id="left">
                    <h2>Social networking service</h2>
                    <div class="col_l">
                        <span>A social networking service is an online service, platform, or site that focuses on facilitating the building of social networks or social relations among people who, for example, share interests, activities, backgrounds, or real-life connections. A social network service consists of a representation of each user (often a profile), his/her social links, and a variety of additional services.</span><br /><br />

                       Most social network services are web-based and provide means for users to interact over the Internet, such as e-mail and instant messaging. Online community services are sometimes considered as a social network service, though in a broader sense, social network service usually means an individual-centered service whereas online community services are group-centered. Social networking sites allow users to share ideas, activities, events, and interests within their individual networks. <br />
                      <div class="more"><a href="#"><img src="images/b_more.gif" alt="" /></a></div>
                  	</div><br />
					
					<h2>FREE SOCIAL NETWORKING SITES USEFUL LINKS</h2>
                    <div class="col_l">
                        <ol>
										<li><a href="https://www.facebook.com/login.php">FaceBook</a></li>
										<li><a href="www.orkut.co.in/">Orkut</a></li>
										<li><a href="picasaweb.google.com/">Picasa</a></li>
										<li><a href="https://twitter.com/signup">Twitter</a></li>
										<li><a href="https://plus.google.com/">GooglePlus</a></li>
								 
								  </ol>
                      <div class="more"><a href="#"><img src="images/b_more.gif" alt="" /></a></div>
                  	</div><br />
					
                    <h2>Social Network Sites</h2>
                    <div class="col_l">
                      <img src="images/13029100-human-models-connected-together-in-a-social-network-pattern.jpg" width="202" height="135" class="img" alt="" />
                        <span>We define social network sites as web-based services that allow individuals to&nbsp; construct a public or semi-public profile within a bounded system,  </span><br />
                        <br />
                        articulate a list of other users with whom they share a connection, and  view and traverse their list of connections and those made by others within the system. The nature and nomenclature of these connections may vary from site to site.  <br />
                       While we use the term "social network site" to describe this phenomenon, the term "social networking sites" also appears in public discourse, and the two terms are often used interchangeably. We chose not to employ the term "networking" for two reasons: emphasis and scope. "Networking" emphasizes relationship initiation, often between strangers.<br />
                      <div class="more"><a href="#"><img src="images/b_more.gif" alt="" /></a></div>
               	  	</div>
               	  </div>
                 <div style="clear: both"><img src="images/spaser.gif" alt="" width="1" height="1" /></div> 
            </div> 
            <div style="clear: both"><img src="images/spaser.gif" alt="" width="1" height="1" /></div>
     	</div>
        <!-- content ends -->
         <!-- footer begins -->
    <div id="footer">
  <p>Copyright . 	</div>
<!-- footer ends -->
   <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("login");

frmvalidator.addValidation("username", "req", "Login Name is required");
frmvalidator
		.addValidation("username", "alpha", "Login Name is Only Characters");
frmvalidator.addValidation("password", "req", "Password is required");
//frmvalidator.addValidation("password", "alpha", "Password is Only Characters");
</script> 
             
</div> </div>
</body>
</html>
