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

<!-- 이웃추가 팝업 (이웃, 서로이웃 선택 가능한 팝업) -->

<h5><b>이웃 추가</b></h5>
<hr/>
님과 <input type="radio" name="addFriend" checked="checked" value="follow"/>이웃 <input type="radio" name="addFriend" value="dbfollow"/>서로이웃을 맺습니다
<hr/>
<br>
<div align="center">

<button type="button" onclick="location.href='addfollowGroup.do'">다음</button>
<button type="button" onclick="popupClose();">취소</button>
</div>


<script>
function popupClose(){
	window.close();
}

</script>