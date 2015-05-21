<%@ tag dynamic-attributes="da" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="id" required="true" rtexprvalue="true" 
    type="java.lang.Integer" %>
<%@ attribute name="name" %>
<%@ variable name-given="newid" %>
<%@ variable name-given="newname" scope="AT_END"%>

<c:set var="newid" value="${id}" />
<c:set var="newname" value="${name}" />

<c:out value="id=${id}&name=${name}" /><br />
<c:out value="newid=${newid}&newname=${newname}" /><br />

<jsp:doBody />