<%@ page language="java" import="java.util.*,java.net.URL,java.sql.*" pageEncoding="UTF-8"%>

<%@page import="database.*" %> 
  
 <body>
  <div data-role="page">
	<div data-role="header">

	<table width="100%">
		<tr>
			<td width="33%">
				<!-- <div id="backButton" style="width:60px;" onclick="closeWin();"></div> -->
				<div id="backButton" style="width:60px;" >
					<a href='../main/index.jsp'></a>
				</div>
			</td>
			<td align="center" width="34%"><a style="color:white;">提&nbsp;&nbsp;问</a></td>
			<td width="33%">&nbsp;&nbsp;</td>
		</tr>
	</table>
	
 	</div>
  	<div data-role="content">
  	<link rel="stylesheet" href="../css/ask_public.css" />
  	<script src="../js/ask.js"></script>
  	<%
  	request.setCharacterEncoding("UTF-8");
	String tabDisplay = request.getParameter("tabDisplay");
	int flag = 0;
	if((null==tabDisplay)||(tabDisplay.equals(""))){
		flag = 0;
	}else if(tabDisplay.equals("public")){
		flag = 1;
	}
	if(flag == 1){//显示查看其它患者提问
	%>
	<center>
		<table width="80%" cellpadding="0" cellspacing="0"  style="margin-top: 20px;">
			<tr>
				<td align="center" width="50%"><div style="color:#744501;border-right: 0;" id="OwnASKButton" class="OwnASKButton" onclick="OwnASKButton();" >亲自提问</div></td>
				<td align="center" width="50%"><div style="background-color:#d8a14f;color:white" id="OthersASKButton" class="OthersASKButton"  onclick="OthersASKButton();">现有问题</div></td>
			</tr>
		</table>
		<div  style="border-top: #754501 1px solid;margin-top: 10px;background-color: #fffef0;">
		
		
		<div id="OwnASK" class="OwnASK" style="display:none">
			<%@ include file="../ask_answer/index_patient_quiz.jsp"%>
		</div>
		
		<div id="OthersASK"  class="OthersASK" >
			<%@ include file="../ask_answer/index_patient_public.jsp"%>
		</div>
		</div>
	</center>
	<%	
	}else{//显示提问
	%>

	<center>
			<table width="80%" cellpadding="0" cellspacing="0"  style="margin-top: 20px;">
			<tr>
				<td align="center" width="50%"><div style="background-color:#d8a14f;color:white"  id="OwnASKButton" class="OwnASKButton" onclick="OwnASKButton();" >亲自提问</div></td>
				<td align="center" width="50%"><div style="color:#744501" id="OthersASKButton" class="OthersASKButton"  onclick="OthersASKButton();">现有问题</div></td>
			</tr>
		</table>
		
	<div  style="border-top: #754501 1px solid;margin-top: 10px;background-color: #fffef0;">
		
		<div id="OwnASK" class="OwnASK" >
			<%@ include file="../ask_answer/index_patient_quiz.jsp"%>
		</div>
		
		<div id="OthersASK"  class="OthersASK" style="display:none">
			<%@ include file="../ask_answer/index_patient_public.jsp"%>
		</div>
		</div>
	</center>
	<%
	}
  	%>
	
	</div>
<div data-role="footer" data-id="myfooter" data-position="fixed"></div> 
</div>
</body>	
