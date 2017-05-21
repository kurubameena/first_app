<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.socialnet.dao.UserDAO;"%>
<%@page session="true" %>
<%
String uname=(String)session.getAttribute("uname");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
    <%
      String reqid=(String)request.getAttribute("uid");
      boolean flag=new UserDAO().addFriend(reqid,uname);
    %>
    
  </body>
</html>
