<%@ page errorPage="error.jsp" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首頁 - home.jsp</title>
</head>
<body>
<form action="login.view" method="post" name="login">
  <table>
    <tr>
      <td>帳號</td>
      <td><input type="text" name="id"></td>
    </tr>
    <tr>
      <td>密碼</td>
      <td><input type="password" name="password"></td>
    </tr>
    <tr>
      <td align="center" colspan="2">
        <input type="submit" name="login" value="登入">
      </td>
    </tr>
  </table>
</form>
</body>
</html>