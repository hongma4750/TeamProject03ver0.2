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

<!-- 여기는 친구 목록 -->

<!-- 이웃 소식보기 세부 메뉴(전체,이웃새글,이웃의이웃 ) -->
<a href ="fnewslist.do">전체</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="newlist.do">이웃 새글</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="foffriendlist.do">이웃의 이웃</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="friends.do">이웃목록</a><br>
<!-- 이웃 소식보기 세부 메뉴(전체,이웃새글,이웃의이웃 ) -->

<!-- 이웃종류/이웃/쪽지 -->
<div align="center">
<br>
<table style="text-align: center;">
<col width="100px"/><col width="300px"/><col width="100px"/>
<tr height="25px" style="background-color: #D8D8D8;">
  <th style="text-align: center;"><select><option selected="selected">이웃전체</option></select></th>
  <th style="text-align: center;">이웃</th>
  <th style="text-align: center;">쪽지쓰기</th>
</tr>

<tr>
  <td>서로이웃</td>
  <td>홍마|훌륭한 판단의 표본</td>
  <td><button type="button" class="glyphicon glyphicon-pencil" /></td>
</tr>

<tr>
  <td>이웃</td>
  <td>이공|ILLUSTRATOR LEEGONG</td>
  <td><button type="button" class="glyphicon glyphicon-pencil" /></td>
</tr>
</table>
</div>