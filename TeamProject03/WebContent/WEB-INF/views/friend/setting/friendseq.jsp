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

<!-- 이곳은 이웃순서 탭_내용 -->

<c:if test="${empty flist }">
이웃읎음
</c:if>
<c:forEach items="${flist }" var="fl">
<table>
  <tr>
    <th>이웃그룹</th>
    <th>이웃목록<select><option>직접순서설정</option><option selected="selected">새글순(자동)</option><option>가나다순(자동)</option><option>등록일순(자동)</option></select></th>
  </tr>
  <tr>
    <td>그룹 목록</td>
    <td><button style="color:orange;" class="glyphicon glyphicon-heart"></button>홍마|훌륭한 판단의 표본</td>
  </tr>
  <tr>
    <td>그룹 목록</td>
    <td><button style="color:orange;" class="glyphicon glyphicon-heart"></button>옥수수|옥수수의 잡동블로그</td>
  </tr>
  <tr>
    <td>그룹 목록</td>
    <td><button style="color:gray;" class="glyphicon glyphicon-heart"></button>민블로|민음사 블로그</td>
  </tr>
</table>
</c:forEach>

<script>
$(function () {
    $('#myTab a:last').tab('show')
});
</script>