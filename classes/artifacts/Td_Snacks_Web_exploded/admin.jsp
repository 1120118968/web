<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员界面</title>
</head>
<body>
<jsp:include page="head.jsp" />
<br><br><br><br><br>
<center>
<form style="margin: 0px; font-size: 36px;margin-left:108px;margin-right:-20px" name="form1" method="post" action="delete_shopowner.jsp">
              
              <input placeholder="   输入商家学号进行删除" onClick="hideSearch()" type="text" name="ownid" id="search_text" style="background:url('img/search.png');background-repeat:no-repeat;background-position: 5px,center;">
              <button type="submit" id="search_button">删除</button>
              <img src="img/searchi.png" style="width:160px;visibility:hidden;">
</form>
</center>
<br><br><br><br><br><br><br><br><br><br><br><br>
<jsp:include page="foot.jsp" />
</body>
</html>