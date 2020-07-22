<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.sql.*" errorPage="error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>铁大杂货店</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/demo.js"></script>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  </head>
  
  <body onLoad="load()" style="margin-top: 0px;margin-bottom:0px;background-color:whitesmoke;">
          <hr>
        <footer style="text-align:center;background:linear-gradient(#FFFFCC,#CCFFCC);">©2017 Td_Snacks 使用前必读 意见反馈 京ICP证030173号<br>京公网安备11000002000001号173号</footer>
  </body>
</html>
