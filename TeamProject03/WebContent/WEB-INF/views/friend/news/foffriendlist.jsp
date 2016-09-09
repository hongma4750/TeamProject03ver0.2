<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
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

<!-- 여기는 이웃의 이웃 메뉴 영역 -->

<!-- 이웃 소식보기 세부 메뉴(전체,이웃새글,이웃의이웃 ) -->
<a href ="fnewslist.do">전체</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="newlist.do">이웃 새글</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="foffriendlist.do">이웃의 이웃</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="friends.do">이웃목록</a><br>
<!-- 이웃 소식보기 세부 메뉴(전체,이웃새글,이웃의이웃 ) -->

<br>
<table style="width:500px;">
<tr>
<td colspan="2">
<!-- 제목[댓글수] -->
<h5>
<a>Leegong Daily record 20-69</a>
<span style="color:#ff0000">
[
<em>n</em>
]
</span>
<!-- 이웃이 아닌 사람일 때 뜨는 이웃추가 버튼 -->
<button onclick='popupOpen();'>이웃추가</button>
<!-- 이웃이 아닌 사람일 때 뜨는 이웃추가 버튼 -->
</h5>

</td>
</tr>

<tr>
<td colspan="2">
<!-- 별명,작성일,공감수 -->
<a>ILLUSTRATOR LEEGONG</a>&nbsp;<span>2016.09.04. 22:05</span>&nbsp;<span style="color:#110000">공감 n</span>
</td>
</tr>

<tr>
<td>
<!-- 내용 -->
LeegongDaily record 20-69 이제는 진짜진짜 하반기가 된거지 (거의가 아닌 정말이 되어버린) 그렇게 가을 타령을 하다가도 막상 서늘한 바람이 불어버리니 조급하기도 하고 괜시리 울렁이기도 하고. 변덕스러운 마음뿐이당. 1 스케줄이 확실...
</td>
<td>
<img src="" alt="이미지없음" width="70px" height="70px"/>
</td>
</tr>

</table>



<script type="text/javascript">

function popupOpen(){
	var popUrl = "addfriend.do";	//팝업창에 출력될 페이지 URL
	var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
}

</script>