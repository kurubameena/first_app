<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <style>
          .Title1 {
                   font-family:TimesNewRoman;
                   font-weight:bold;
                   font-size:25px;
                   font-style:italic;
                   color:;
                   
                   }
   </style>
   
      <script language="javascript">
         function goback()
         {
            history.back();
          }
      </script>
 
  </head>
  
  <body bgcolor='#1CACE9'>
   <form > <center> 
     <font color="green" face="TimesNewRoman" size="10"> 
     
      <span class="title1"><%=request.getParameter("msg")%></span><br><br>
       <input type=button value="BACK" onClick=goback()>     
    </font>
      </center> 
   </form>
  </body>
</html>


