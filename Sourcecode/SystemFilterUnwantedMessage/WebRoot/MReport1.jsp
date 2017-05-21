<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.daoimpl.MailDaoImpl"%>
<%@page import="com.socialnet.bean.MailDTO"%>
<%@page import="sun.misc.Cache"%>
<%
	String user = (String)session.getAttribute("ownuser");
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
		
	</head>
	<%!
	int count=0;
	int no=0; 
	 %>
	<body bgcolor='#1CACE9'>
		<jsp:include page="./index.jsp"></jsp:include>
		
		<table width="930" height="500" cellspacing="0" cellpadding="0"
			align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="140"
					width="140" valign="top"><br><br>
					
					
					
					<jsp:include page="LeftMenu.jsp" flush="true"><jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				<br></td>
				<td align="center" id="target" nowrap="nowrap" height="" width="700"
					valign="top">
					
						<table align="center" bgcolor="F2F2E8" border="0" width="700">
							<tr></tr>
							<%
						
								
							 String word=request.getParameter("word");
							 session.setAttribute("word",word);
							 System.out.println(word);
						    
       
        
                             ArrayList<MailDTO> flist = new MailDaoImpl().getAllMessageList(user,
										user, request.getRealPath("./Userimages"));
							%>
							<tr bgcolor="white">
								<td align="center">
									<font color="#02C5FF">Filter  Messages</font>
								</td>
							</tr>
							
							<%
							
							 String data=null;
								if (!flist.isEmpty()) {
									for (MailDTO bean : flist) {
									
									
									
							%>
							<tr>
								
								<% 
								
								data=bean.getMessage();
								String[] array = data.split(" ");
                            {
                      try{
                          for(int a=0;a < array.length;a++)
                   {
                                 if(array[a].equals(word))
                                        count++;


                     }
                     if(count>0)
                     {
                     
                                         %>
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
									
									<font size="3" color="red">Date:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3" color="##0000FF"><%=bean.getMaildate()%></font></br>
								

                 <td>

                   <font size="3" color="green">count:</font>&nbsp;&nbsp;<font size="3" color="#0000FF"><%=count%></font>
          <% 

                    System.out.print("\n The given word occured " + count + " times");
                    count=0;
          }}
           catch(Exception e){}

                System.out.println("word is present "+count+" times");

        }
								
								%>
								
								</td>
						</tr>
							<%
								}
								}
								
							%>		
							<tr bgcolor="#EFEFE5">
							<tr bgcolor="#EFEFE5">
							<td></br></br>
    <form action="MReport2.jsp" name="search">
	<center>
	<fieldset>
	<font size="3" color="#003366" >Enter Threshold Value: &nbsp; </font>
	<input type="text" id="thsld" name="thsld" size="20"/></br> </br> 
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
