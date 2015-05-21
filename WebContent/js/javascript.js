/*
 * HTML4.0事件
 * onabort 用戶終止下載頁面。
 * onblur 用戶離開對象。
 * onchange 用戶改變對象的值。
 * onclick 用戶點擊對象。
 * ondblclick 用戶雙擊對象。
 * onfocus	用戶激活對象。
 * onkeydown 按下鍵盤。
 * onkeypress 按壓鍵盤。
 * onkeyup 鬆開鍵盤。
 * onload 完成頁面下載。
 * onmousedown 按下滑鼠。
 * onmousemove 游標在對象上移動。
 * onmouseover 游標移動到對象上。
 * onmouseout 游標移出對象。
 * onmouseup 鬆開按鈕。
 * onreset 用戶重製表單。
 * onselect 用戶選取頁面上的內容。
 * onsubmit 用戶提交表單。
 * onunload 用戶關閉頁面。
 */

/*
 * HTML DOM事件
 * x.innerHTML - the text value of x
 * x.nodeName - 節點名稱
 * x.nodeValue - 節點值
 * x.nodeType - 節點類型(元素 - 1, 屬性 - 2, 文本 - 3, 註釋 - 8, 文檔 - 9)
 * x.parentNode - the parent node of x
 * x.childNodes - the child nodes of x
 * x.attributes - the attributes nodes of x
 * x.getElementById(id) - get the element with a specified id
 * x.getElementsByTagName(name) - get all elements with a specified tag name
 * x.appendChild(node) - insert a child node to x
 * x.removeChild(node) - remove a child node from x
 */

var t;

//時鐘
function getTime() {
	var today = new Date();
	var h = today.getHours();
	var m = today.getMinutes();
	var s = today.getSeconds();
	m = checkTime(m);
	s = checkTime(s);
	document.getElementById('clock').innerHTML = h + ':' + m + ':' + s;
	document.getElementById('clock').style.color='red';
	t = setTimeout('getTime()',500);
}

//取消時鐘
function clearTime() {
	clearTimeout(t);
	document.getElementById('clock').innerHTML = '';
}

//時間補零
function checkTime(i) {
	if (i < 10) {
		i = '0' + i;
	}
	return i;
}

//排序
function doSort() {
	var array = new Array();
	array[0] = '5';
	array[1] = '10';
	array[2] = '1';
	alert(array.sort(sortNumber));
}

//排序依據
function sortNumber(a, b) {
	return a - b;
}

//JSON
function doJson() {
	var json = {'name': 'Skye', 'id': 'presto'};
	var jsonArray = [{'name': 'Skye1', 'id': 'presto1'}, 
	                 {'name': 'Skye2', 'id': 'presto2'}];
	var jsonTemp = '({jsonEval: [{"name": "Skye1", "id": "presto1"}, '
			+ '{"name": "Skye2", "id": "presto2"}]})';
	var obj = eval(jsonTemp);
	
	document.getElementById('json').innerHTML = 'name=' + json.name + '&id=' 
			+ json.id;
	document.getElementById('jsonArray').innerHTML = 'name[0]=' 
			+ jsonArray[0].name + '&id[0]=' + jsonArray[0].id + '&name[1]=' 
			+ jsonArray[1].name + '&id[1]=' + jsonArray[1].id;
	document.getElementById('jsonEval').innerHTML = 'name[0]=' 
			+ obj.jsonEval[0].name + '&id[0]=' 
			+ obj.jsonEval[0].id + '&name[1]=' 
			+ obj.jsonEval[1].name + '&id[1]=' + obj.jsonEval[1].id;
}
