<%@ page errorPage="error.jsp" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>範例 - sample.jsp</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="container">
  <div id="top">
    <div id="top-left">
      <h1>範例 - sample.jsp</h1>
	</div>
	<div id="top-right">
	</div>
  </div><br />
  
  <div id="tool">
  	<div id="tool-left">
  	  <a href="html.html" class="toolvan">HTML</a>
  	  <a href="html5.html" class="toolvan">HTML5</a>
  	  <a href="javascript.html" class="toolvan">JavaScript</a>
  	  <a href="ajax.html" class="toolvan">Ajax</a>
  	  <a href="jquery.html" class="toolvan">jQuery</a>
  	  <a href="xml.html" class="toolvan">XML</a>
  	  <a href="sample.jsp" class="toolvan">傳遞資料</a>
  	  <a href="request.jsp" class="toolvan">REQUEST</a>
  	  <a href="el.jsp" class="toolvan">EL</a>
      <a href="tag.jsp" class="toolvan">Tag</a>
  	</div>
  	<div id="tool-right">
  	  <a href="/home.jsp">HOME</a>
  	</div>
  </div><br />
  
  <div id="menu">
    <dl>
      <dt>傳遞資料</dt>
        <dd>使用Servlet傳遞資料</dd>
        <dd>使用JavaBean傳遞資料</dd>
        <dd>使用Struts2 Convention plug-in傳遞資料</dd>
        <dd>使用Struts2 XML傳遞資料</dd>
        <dd>使用Struts2 Annotation傳遞資料</dd>
      <dt>HTML</dt>
        <dd>HTML</dd>
    </dl>
    
    <ol>
      <li>111</li>
      <li>222</li>
      <li>333</li>
    </ol>
    
    <ul>
      <li>111</li>
      <li>222</li>
      <li>333</li>
    </ul>
  </div><br />
  
  <div id="column">
    <%-- 使用Servlet傳遞資料 --%>
    <h3>使用Servlet傳遞資料</h3>
    <h4>action="sample.view"</h4>
    <form action="sample.view" method="post" name="sample">
      ID:<input name="id" type="text" value="" /><br />
      NAME:<input name="name" type="text" value="" /><br />
      <input name="submit" type="submit" value="提交" />
    </form>
    
    <%-- 使用JavaBean傳遞資料 --%>
    <hr />
    <h3>使用JavaBean傳遞資料</h3>
    <h4>action="result.jsp"</h4>
    <form action="result.jsp" method="post" name="sample">
      ID:<input name="id" type="text" value="" /><br />
      NAME:<input name="name" type="text" value="" /><br />
      <input name="submit" type="submit" value="提交" />
    </form>
    
    <%-- 使用Struts2 Convention plug-in傳遞資料 --%>
    <hr />
    <h3>使用Struts2 Convention plug-in傳遞資料</h3>
    <h4>action="sample"</h4>
    <s:form action="sample">
      ID = 1:content/sample.jsp, 2:content/sample-result.jsp<br />
      <s:textfield name="id" label="ID" />
      <s:textfield name="name" label="NAME" />
      <s:submit />
    </s:form>
    
    <%-- 使用Struts2 XML傳遞資料 --%>
    <hr />
    <h3>使用Struts2 XML傳遞資料</h3>
    <h4>action="annotation"</h4>
    <s:form action="xml">
      ID = 1:home.jsp, 2:sample.jsp, 3:result.jsp<br />
      <s:textfield name="id" label="ID" />
      <s:textfield name="name" label="NAME" />
      <s:submit />
    </s:form>
    
    <%-- 使用Struts2 Annotation傳遞資料 --%>
    <hr />
    <h3>使用Struts2 Annotation傳遞資料</h3>
    <h4>action="annotation"</h4>
    <s:form action="annotation">
      ID = 1:home.jsp, 2:sample.jsp, 3:result.jsp<br />
      <s:textfield name="id" label="ID" />
      <s:textfield name="name" label="NAME" />
      <s:textfield name="user.id" label="USER.ID" />
      <s:textfield name="user.name" label="USER.NAME" />
      <s:submit />
    </s:form>
    
    <form action="annotation" method="post">
      ID = 1:home.jsp, 2:sample.jsp, 3:result.jsp<br />
      ID:<input type="text" name="id" value="" /><br />
      NAME:<input type="text" name="name" value="" /><br />
      USER.ID:<input type="text" name="user.id" value="" /><br />
      USER.NAME:<input type="text" name="user.name" value="" /><br />
      <input name="submit" type="submit" value="提交" />
    </form>
  </div>
</div>
</body>
</html>