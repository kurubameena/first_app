<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.socialnet.dao.UserDAO" %>
<%
String user=(String)session.getAttribute("ownuser");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head> 
  <body bgcolor='#1CACE9'>
   <table align="center"  border="0">
      <tr>
        <td align="center" valign="top">
         <%
           String ppath=request.getRealPath("/Userimages");
           UserDAO ud=new UserDAO(); 
         
          ud.getPhoto(user,ppath); 
          
          %>
         <img src="./Userimages/<%=user %>.jpg"  height="137" width="148">
        </td>
      </tr>
      <tr>
       <%if(user.equals((String)session.getAttribute("ownuser")))
        {
       %>
       <td align="center">
         <a href='ChangePhoto.jsp?auser=<%=(String)session.getAttribute("ownuser") %>'>ChangePoto</a>
      </td>
       <%} %>
     </tr>
   </table> 
  </body>
</html>
