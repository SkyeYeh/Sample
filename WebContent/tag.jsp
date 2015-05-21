<%@ page errorPage="error.jsp" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ taglib prefix="tagFile" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="simpletag" uri="http://tag.sample.com/simpletag" %>
<%@ taglib prefix="tag" uri="http://tag.sample.com/tag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tag - tag.jsp</title>
</head>
<body>

<!-- Tag File 自訂標籤 -->
<h3>Tag File 自訂標籤</h3>

<form action="fileupload">
  <tagFile:fileupload target="index.jsp" addField="true" deleteField="false" />
  <br />
</form>

<tagFile:tagFile id="123" name="Skye">
  <h4>sampleTagFile's body</h4>
  id=${id}&name=${name}<br />
  newid=${newid}&newname=${newname}<br />
</tagFile:tagFile>
<h4>sampleTagFile's body at end</h4>
id=${id}&name=${name}<br />
newid=${newid}&newname=${newname}<br />

<!-- Simple Tag 自訂標籤 -->
<h3>Simple Tag 自訂標籤</h3>
<simpletag:simpletag id="123" name="Skye" />
  
<!-- Tag 自訂標籤 -->
<h3>Tag 自訂標籤, Tag Library</h3>
<tag:tag myId="123" name="Skye" />

</body>
</html>