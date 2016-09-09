<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value ="utf-8"/> 

<!-- 부트스트랩 링크 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 링크 -->

<!-- 이웃추가 팝업 (이웃그룹지정) -->

<h5><b>이웃 추가</b></h5>
<hr/>
을 추가할 그룹을 선택해주세요.
<br>
그룹선택 <select style="width:200px;"><option></option></select> <button onclick="newgroup();">그룹추가</button><br><br>

<div id="newgroup" style="display:none">
&nbsp;&nbsp;<input name="" type="checkbox" checked="checked"/> <input type="text" value="새 그룹"/>
<select name="openChk"><option selected="selected">공개</option><option>비공개</option></select>
</div>

<hr/>
<div align="center">
<button type="button" onclick="#none">확인</button>
<button type="button" onclick="popupClose();">취소</button>
</div>

<script>
function popupClose(){
	window.close();
}

//그룹추가 버튼클릭시 그룹생성 영역 생김
function newgroup(){
	if(document.all.newgroup.style.display=="none"){
		document.all.newgroup.style.display="block";
	}else{
		document.all.newgroup.style.display="none";
	}
}

</script>