<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@page import="com.socialnet.dao.*"%>
<%@page import="com.socialnet.bean.UserBean"%>
<%
	String user = (String) session.getAttribute("ownuser");
	String ppath = request.getRealPath("/Userimages");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%!String status;%>


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
	</head>
	<body>
		<jsp:include page="index.jsp"></jsp:include>

		<table width="930" height="500" align="center" border="0">
			<tr>
				<td align="left" id="leftmenu" nowrap="nowrap" height="300"
					width="150" valign="top"><jsp:include page="LeftMenu.jsp" flush="true"><jsp:param name="auser" value="<%=user %>" />
					</jsp:include>
				</td>

				<td align="center" id="target" nowrap="nowrap" height="" width="600"
					valign="top">
					<table align="center" bgcolor="#938E96" border="" width="600">
						
						<font size="3" color="red"> <%
 	out.println(request.getAttribute("status"));
 %>
						</font>
						</br>
						
						
						<font size="4" color="red"> <%
 	out.println("Messase:");
 %> </font>
						<font size="4" color="blue">
							<%
								out.println(request.getAttribute("msg"));
							%>
						</font>
						
						<%
							String str = null;
							ArrayList<String> arcr = (ArrayList<String>) request.getAttribute("cr");
							ArrayList<String> arncr = (ArrayList<String>) request.getAttribute("ncr");
						     ArrayList<String> cp = (ArrayList<String>) request.getAttribute("cp");
							System.out.println("crrrrrr" + arcr);
							System.out.println("ncrrrrrr"+arncr);
					 	
							ArrayList<String> arrayList = (ArrayList<String>) request.getAttribute("ncr");
		
		              System.out.println(arrayList.size());
		                    System.out.println(arrayList);
		for (int i = 0; i < arcr.size(); i++) {
			System.out.println("str1----" + arcr.get(i));
			for (int j = 0; j < arncr.size(); j++) {
				System.out.println("str2----" +arncr.get(j));
				if ((arcr.get(i)).equals(arncr.get(j))) {

					arrayList.remove(arncr.get(j));
					System.out.println(arrayList);
					System.out.println(arrayList.size());
				}

			}

		}
		     System.out.println("arrary---------" + arrayList);
				
							int pcn=(Integer)request.getAttribute("pcn");
							int counter=(Integer)request.getAttribute("counter");
							int counter1=(Integer)request.getAttribute("counter1");
							int totalCharacters=(Integer)request.getAttribute("totalCharacters");
						%>

						</br>
						</br>
						


						<tr><td width="50">
						<font size="4" color="#7FE817">CorrectWords</font>
						</td>
							<%
								Iterator itr = arcr.iterator();
								while (itr.hasNext()) {
							%><td background="white" bgcolor="white" width="10">
							<%
									String cw = (String) itr.next();
										
										out.println(cw);
								%>
							</td>                    
							<%
								}

								%></tr> 
								
						
						<tr><td width="100">
						<font size="4" color="#7FE817">BadWords</font>
						</td>
							<%
								Iterator itr1 = arrayList.iterator();
								while (itr1.hasNext()) {
							%><td background="white" bgcolor="white" width="10">
							<%
									String bw = (String) itr1.next();
										
										out.println(bw);
								%>
							</td>                    
							<%
								}

								%></tr> 
								
						
						
						<tr><td width="100">
						<font size="4" color="#7FE817" >CapitalWords</font>
						</td>
							<%
								Iterator icp = cp.iterator();
								while (icp.hasNext()) {
							%><td background="white" bgcolor="white" width="10">
							<%
									String cpw = (String) icp.next();
									
										out.println(cpw);
								%>
							</td>                    
							<%
								}

								%></tr> 
								
						<tr><td width="100">
						<font size="4" color="#7FE817" >TotalCharacters</font>
						</td>
							<td background="white" bgcolor="white" width="10">
							<%
									
									
										out.println(totalCharacters);
								%>
							</td>                    
							</tr> 
						
					<tr><td width="100">
						<font size="4" color="#7FE817" >PunctuationCharacters</font>
						</td>
							<td background="white" bgcolor="white" width="10">
							<%
									
									
										out.println(pcn+"/"+totalCharacters);
								%>
							</td>                    
							</tr> 
								
								
								
								<tr><td width="100">
						<font size="4" color="#7FE817" >ExclamationMarks</font>
						</td>
							<td background="white" bgcolor="white" width="10">
							<%
									
									
										out.println(counter+"/"+pcn);
								%>
							</tr> 
								
								
					     <tr><td width="100">
						<font size="4" color="#7FE817" >QuestionMarks</font>
						</td>
							<td background="white" bgcolor="white" width="10">
							   <%
										out.println(counter1+"/"+pcn);
								%>
							</td>                    
							</tr> 
								
						
					

			</tr>
			<tr>
				<td>
					<table>
						<tr>
							<td>
								<font size="3" color="green"> <%
 	
 	if (status != null) {
 		out.println(status);
 	}
 %> </font>


							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<table>
			<br>
			 <tr>
                    
                    
                    <td width="30%"><input type="radio" name="stream" value="MCA"  checked><font color="red">Send the message</font></td></tr>
                   <tr> <td width="25%"><input type="radio" name="stream" value="MBA"><font color="red">Reject the Message</font></td></tr>
                  <tr> <td width="25%"><input type="radio" name="stream"  value="B.Tech."><font color="red">Remove the Bad word and Send Correct message</font></td></tr>
                  
                  
                  
                  <tr><td><center>
                  <br/>
                  
                  <input type="submit" name="Send" value="Send"></center></td></tr>
                </table>

	</body>
</html>


