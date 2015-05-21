<%@ page errorPage="error.jsp" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="el" uri="http://el.sample.com/el" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="sampleBean" class="com.sample.bean.SampleBean" 
    scope="request" />
<jsp:setProperty name="sampleBean" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>結果 - result.jsp</title>
</head>
<body>

<h1>Result</h1>

<!-- Parameter -->
<hr />
<h3>Parameter:</h3>
ID:${param.id}<br />
NAME:${param.name}<br />
USER.ID:${param["user.id"]}<br />
USER.NAME:${param["user.name"]}<br />

<!-- Attribute -->
<hr />
<h3>Attribute:</h3>
ID:${id}<br />
NAME:${name}<br />
USER.ID:${user.id}<br />
USER.NAME:${user.name}<br />

<!-- EL Function -->
<hr />
<h3>EL Function:</h3>
${el:function(id, name)}<br />

<!-- 使用JavaBean接收資料 -->
<hr />
<h3>使用JavaBean接收資料</h3>
ID:<jsp:getProperty name="sampleBean" property="id"/><br />
NAME:<jsp:getProperty name="sampleBean" property="name"/><br />

<!-- 使用Struts2接收資料 -->
<hr />
<h3>使用Struts2接收資料</h3>
ID:<s:property value="id" /><br />
NAME:<s:property value="name" /><br />
USER.ID:<s:property value="user.id" /><br />
USER.NAME:<s:property value="user.name" /><br />

<!-- 使用Strts2 Data Tag接收資料 -->
<hr />
<h3>使用Strts2 Data Tag接收資料</h3>
<s:set name="userId" value="user.id" />
<s:set name="userName" value="user.name" />
#USERID:<s:property value="#userId" /><br />
#USERNAME<s:property value="#userName" /><br />
<c:if test="${user != null}">
  <s:push value="user">
    PUSH_ID:<s:property value="id" /><br />
    PUSH_NAME:<s:property value="name" /><br />
  </s:push>
</c:if>

<!-- 使用Struts2 Bean Tag接收資料 -->
<hr />
<h3>使用Struts2 Bean Tag接收資料</h3>
<s:bean name="com.sample.action.SampleAction" var="sampleActionBean">
  <s:param name="id" value="123" />
  ID:<s:property value="id" /><br />
</s:bean>
ID:<s:property value="#sampleActionBean.id" /><br />

<!-- 使用Control Tags接收資料 -->
<hr />
<h3>使用Control Tags接收資料</h3>
<table border="1">
  <tr><td>USER.ID</td><td>USER.NAME</td></tr>
  <s:iterator value="users" status="songStatus">
    <tr class="<s:if test="#songStatus.odd == true ">odd</s:if><s:else>even</s:else>">
    <td><s:property value="id" /></td>
    <td><s:property value="name" /></td>
    </tr>
  </s:iterator>
</table>

<!-- 
Name	 Return Type	 Description
index	 int			 zero-based index value.
count	 int			 index + 1
first	 boolean		 returns true if it is the first element
last	 boolean		 returns true if it is the last element
even	 boolean		 returns true if the count is an even number.
odd		 boolean		 returns true if the count is an odd number.
modulus	 int			 takes an int value and returns the modulus of count. 
-->

<a href="sample.jsp">返回</a>
</body>
</html>