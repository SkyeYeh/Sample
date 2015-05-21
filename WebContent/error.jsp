<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>網頁錯誤</title>
</head>
<body>
<table align="center">
  <tr align="center">
    <td>網頁錯誤</td>
  </tr>
  <tr align="center">
    <td><%= exception %></td>
  </tr>
  <tr align="center">
    <td><a href="home.jsp" name="home">
      <img src="Image/error.jpg" width="60" height="60" alt="返回首頁">
    </a></td>
  </tr>
</table>
</body>
</html>