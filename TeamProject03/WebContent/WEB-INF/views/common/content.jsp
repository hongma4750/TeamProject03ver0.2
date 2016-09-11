<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- tag들 필요하면 Ctrl+c  /   Ctrl+v -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<fmt:requestEncoding value="utf-8"/>
<!-- tag들 필요하면 Ctrl+c  /   Ctrl+v -->

<!-- 부트스트랩 링크 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 링크 -->


<ul class="nav nav-tabs" role="tablist" id="myTab">
  <!-- 로그인시 -->
  <!-- <li role="presentation"  class="active"><a href="fnewslist.do" id="friendnews" >이웃소식보기</a></li>
  <li role="presentation"><a href="topiclist.do" id="topic">주제별 글보기</a></li> -->
  <!-- 로그인시 -->
  
  <!-- 비로그인시 -->
  <li role="presentation" ><a href="#" id="friendnews" >이웃소식보기</a></li>
  <li role="presentation"  class="active"><a href="topiclist.do" id="topic">주제별 글보기</a></li>
  <br><div id="right_side_set" align="right"><a href="#none" >열린이웃추가</a>&nbsp;&nbsp;<a href="setfriendGroup.do">이웃관리</a>&nbsp;&nbsp;<a href="#none">관심주제설정</a></div>
  <!-- 비로그인시 -->  
</ul>

<!-- 비로그인시 로그인 안내창 -->
<%-- <c:if test="${login.id eq null}" > --%>
<div id="sign_in" style="position:absolute; top:40px; z-index:3; 
     background-color: #fff; border:1px solid #000;width:300px; display: none;">
  <h5>로그인 후 사용가능합니다.<button type="button" id="btnClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>&nbsp;&nbsp;</button></h5>
  <p>
  <span>우측 로그인 영역</span>
     에서 로그인 후 사용해 주세요.
  </p>
</div>
<%-- </c:if> --%>



<script>
$(function () {
    $('#myTab a:last').tab('show')
});
  
  //이웃소식보기 탭 클릭
  $('#friendnews').click(function(){
	  alert('이웃소식');
	 
	  //비로그인시 로그인 안내 div태그
	  document.all.sign_in.style.display = "block";
  });
  
  //주제별 글보기 탭 클릭
  $('#topic').click(function(){
	alert('topic');
	
  });
  
  $('#btnClose').click(function(){
	  document.all.sign_in.style.display = "none";
  });
  
  
</script>
