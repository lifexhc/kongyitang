<%@ page language="java" import="java.util.*,java.net.URL,java.sql.*" pageEncoding="UTF-8"%>

 <%@ include file="../include/package.jsp"%> 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title><%=sysName %></title>

	 <%@ include file="../include/meta.jsp"%> 
	 <%@ include file="../include/cssJS.jsp"%> 
<link rel="stylesheet" href="../css/product.css" />
<style type="text/css">
</style>

</head>
  
 <body>
  <div data-role="page" style="background-image: url(../images/reservebg.gif);background-attachment: fixed;background-color: rgb(254, 231, 197);background-position: 50% 0%;background-repeat: no-repeat;">
	<div data-role="header">
<!--	style="heght:50px;font-sise:25px" -->
	<table width="100%">
		<tr>
			<td width="33%">
				<div id="backButton" style="width:60px;">
					<a href='../main/index.jsp'></a>
				</div>
			</td>
			<td align="center" width="34%"><a style="color:white;">预约中心</a></td>
			<td width="33%">&nbsp;&nbsp;</td>
		</tr>
	</table>
 	</div>
	
    <script>
    function reserve_clinic(){
    	window.location = "../reserve_clinic/index.jsp";
     }
    function reserve_shanggongfang(){
    	window.location = "../reserve_shanggongfang/index.jsp";
     }
    function reserve_xuetang(){
    	window.location = "../reserve_xuetang/index.jsp";
     }
    </script>
				<table  border="0" cellspacing="0" cellpadding="0"
						width="100%"  style="border-top: 1px;margin-top: 100px;" >
			<tr>
			 	<td width="20%"></td>
				<td width="60%" align="center"><div  id="reserveListButton" onclick="reserve_clinic();">门诊预约</div></br></td>
				
				
				<td width="20%"></td>
			</tr>
			
		
			
			<tr>
			 	<td width="20%"></td>
				<td width="60%" align="center"><div id="reserveListButton" onclick="reserve_shanggongfang();">健康服务预约</a></div></br></td>
				
				
				<td width="20%"></td>
			</tr>
			<tr>
			 	<td width="20%"></td>
				<td width="60%" align="center"><div id="reserveListButton" onclick="reserve_xuetang();">学院介绍</div></td>
				
				
				<td width="20%"></td>
			</tr>
		
		</table>
		

  </div>

	
<div data-role="footer" data-id="myfooter" data-position="fixed">
</div> 

</div> 

  </body>
</html>