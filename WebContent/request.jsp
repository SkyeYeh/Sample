<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request.jsp</title>
</head>
<body>

<h2>javax.servlet.http.HttpServletRequest 介面所提供的方法</h2>

所有的請求參數<br>
getParameter("id")：<%--= request.getParameter("id") --%><br>
getParameterValues("id")[0]：<%--= request.getParameterValues("id")[0] --%><br>
getParameterNames( ).nextElement()：<br>
<%
	request.setCharacterEncoding("UTF-8");
	Enumeration<String> e = request.getParameterNames();
	String param = null;
	for (; e.hasMoreElements();) {
		param = e.nextElement();
		out.println(param + "=" + request.getParameter(param) + "&");
	}
%><br>
(getParameterMap( ).get("id"))[0]：
<%--= (request.getParameterMap().get("id"))[0] --%><br><br>

getAuthType( )：<%= request.getAuthType() %><br>
getProtocol( )：<%= request.getProtocol() %><br>
getMethod( )：<%= request.getMethod() %><br>
getScheme( )：<%= request.getScheme() %><br>
getContentType( )：<%= request.getContentType() %><br>
getContentLength( )：<%= request.getContentLength() %><br>
getCharacterEncoding( )：<%= request.getCharacterEncoding() %><br>
getRequestedSessionId( )：<%= request.getRequestedSessionId() %><br><br>

getContextPath( )：<%= request.getContextPath() %><br>	
getServletPath( )：<%= request.getServletPath() %><br> 
getPathInfo( )：<%= request.getPathInfo() %><br>
getRequestURI( )：<%= request.getRequestURI() %><br>
getQueryString( )：<%= request.getQueryString() %><br><br>

getRemoteAddr( )：<%= request.getRemoteAddr() %><br>
getRemoteHost( )：<%= request.getRemoteHost() %><br>
getRemoteUser( )：<%= request.getRemoteUser() %><br>
getRemotePort( )：<%= request.getRemotePort() %><br>
getServerName( )：<%= request.getServerName() %><br>
getServerPort( )：<%= request.getServerPort() %><br>

</body>
</html>