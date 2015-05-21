<%@ tag description="檔案上傳" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="addField" type="java.lang.Boolean" %>
<%@ attribute name="deleteField" type="java.lang.Boolean" %>
<%@ attribute name="target" required="true" %>
<script type="text/javascript">

  //增加欄位
  function addField() {
    var tr = document.getElementById("fileuploadtable").insertRow(-1);
    var td = tr.insertCell(-1);
    td.innerHTML = 
        '<input type="file" name="file" value="檔案上傳" />';
    td = tr.insertCell(-1);
    td.innerHTML = '<input type="text" name="renamed" value="檔案更名" />';
    td = tr.insertCell(-1);
    td.innerHTML = '<input type="text" name="filedesc" value="檔案敘述" />';
    td = tr.insertCell(-1);
    td.innerHTML = '<input type="reset" value="X" />';
  }
  
  //刪除欄位
  function deleteField() {
    var table = document.getElementById("fileuploadtable");
    if(table.rows.length > 2) {
      table.deleteRow(-1);
    }
  }
  
  //重設欄位
  function reset() {
	  
  }

</script>
<form action="fileupload.fileupload" method="post" enctype="multipart/form-data">
<input type="hidden" name="target" value="${target}">
  <table id="fileuploadtable">
    <tr>
      <td>檔案上傳</td>
      <td>檔案更名</td>
      <td>檔案敘述</td>
      <td>
        <c:if test="${addField}">
          <input type="button" value="增加項目" onclick="addField();" />
        </c:if>
        <c:if test="${deleteField}">
          <input type="button" value="刪除項目" onclick="deleteField();" />
        </c:if>
      </td>
    </tr>
    <tr>
      <td><input type="file" name="file" value="檔案上傳" /></td>
      <td><input type="text" name="renamed" value="檔案更名" /></td>
      <td><input type="text" name="filedesc" value="檔案敘述" /></td>
      <td><input type="reset" value="X" /></td>
    </tr>
  </table>
  <input type="submit" value="上傳" />
  <jsp:doBody />
</form>