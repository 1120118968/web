<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.sql.*" errorPage="error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%
    String userid = (String)session.getValue("sessionid");
    String username=null; 
	String usersex=null;
	String userphone=null;
	String userdormitory=null;
	String usernumber=null;
	String userprofile=null;
System.out.println(userid);
request.setCharacterEncoding("utf-8");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//连接数据库
Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=Td_Snacks","sa","qwe1314521");
String sql="select * from users where userid ='"+userid+"'"; //sql语句，查找普通用户学生
System.out.println(userid+sql);                       //输出到控制台判断语句是否正确
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);               //普通用户：学生结果集
int result=0;
while(rs.next())                                     //循环查找普通用户：学生结果集
{
	username=rs.getString("username"); 
	usersex=rs.getString("usersex");
	userphone=rs.getString("userphone");
	userdormitory=rs.getString("userdormitory");
	usernumber=rs.getString("usernumber");
	userprofile=rs.getString("u_profile");
}
stmt.close();
con.close();	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'info.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
  .cen {
	text-align: center;
}
  </style>
  </head>
  <body style="overflow:hidden;">
	<p ><img name="" src="<%=userprofile%>" width="81" height="81" alt="" style="margin-left:235px;"></p>
	<div style="margin-left:230px;">
	<form action="uploadimage.jsp" method="post" enctype="multipart/form-data" name="form1">
    <input type="file" name="file">
    <input type="submit" name="Submit" value="上传">
    </div>
    </center>
	<table width="90%" border="0" cellspacing="10" cellpadding="10">
	  <tr>
	    <td align="right" style="color:#ff6600;font-weight:bold;font-size:16px;">姓 名： </td>
	    <td ><label><%=username%></label>&nbsp;</td>
      </tr>
	  <tr>
	    <td align="right" style="color:#ff6600;font-weight:bold;font-size:16px;">性别：</td>
	    <td><label><%=usersex%></label>&nbsp;</td>
      </tr>
	  <tr>
	    <td align="right" style="color:#ff6600;font-weight:bold;font-size:16px;">电 话： </td>
	    <td ><label><%=userphone%></label>&nbsp;</td>
      </tr>
	  <tr>
	    <td style="color:#ff6600;font-weight:bold;font-size:16px;" align="right">楼 号： </td>
	    <td><label><%=userdormitory%></label>&nbsp;</td>
      </tr>
	  <tr>
	    <td align="right" style="color:#ff6600;font-weight:bold;font-size:16px;">宿舍号： </td>
	    <td ><label><%=usernumber%></label>&nbsp;</td>
      </tr>
	  </table>
	<p>&nbsp;</p>

  </body>
</html>
