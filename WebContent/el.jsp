<%@ page contentType="text/html;charset=UTF-8" %>
<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" --%>

<html>
<head>
  <title>el.jsp</title>
</head>
<body>

<h2>EL隱含物件</h2>

\${pageContext.request.queryString}：${pageContext.request.queryString}<br/>
\${pageContext.request.requestURL}：${pageContext.request.requestURL}<br/>
\${pageContext.request.contextPath}：${pageContext.request.contextPath}<br/>
\${pageContext.request.method}：${pageContext.request.method}<br/>
\${pageContext.request.protocol}：${pageContext.request.protocol}<br/>
\${pageContext.request.remoteUser}：${pageContext.request.remoteUser}<br/>
\${pageContext.request.remoteAddr }：${pageContext.request.remoteAddr}<br/>
<%--\${pageContext.session.new}：${pageContext.session.new}<br/--%>
\${pageContext.session.id}：${pageContext.session.id}<br/>

<h2>EL物件</h2>
${user}<br>
${pageScope.user}<br>
${requestScope.user}<br>
${sessionScope.user}<br>
${applicationScope.user}<br>
	
${param}<br>
${paramValues}<br>
	
${cookie}<br>
${header}<br>
${headerValues}<br>
${iniParam}<br>
${pageContext}<br>

</body>
</html>