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
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 부트스트랩 링크 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 링크 -->

<style type="text/css">
/* 	 a{
		height:70px;
		color:white;
	}
	a:hover{
		background-color:#5AB81A;
		color:yellow;
	}
	
	li:hover{
		background-color:#5AB81A;
	} */
	
	.nav-tabs>li>a {
	margin-right: 2px;
	line-height: 1.42857143;
	border: 1px solid transparent;
	border-radius: 4px 4px 0 0;
	font-size: 30px;
	color:white;
}

.nav-tabs>li>a:hover {
	background-color:#5AB81A;
	border-color: #5AB81A #5AB81A #5AB81A;
	color:yellow;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover
	{
	color: yellow;
	cursor: default;
	background-color: #5AB81A;
	border: 1px solid #5AB81A;
	border-bottom-color: transparent
}


</style>

<div style="width:100%; height:100%;;background-color:#5AB81A; color:white; text-align:center;">
    <ul class="nav nav-tabs" id="myTab" style="height:100%;">
    	<c:if test="${menu eq 'id' }">
    		<li class="active" style="height:100%;">
			 	 <a href="#">아이디 찾기</a>
			  </li>
			  
			  <li style="height:100%;">
			  	<a href="pwfind.do?menu=pw">비밀번호찾기</a>
			  </li>
    	</c:if>
    	
    	<c:if test="${menu eq 'pw' }">
    		<li  style="height:100%;">
			 	 <a href="idfind.do?menu=id" >아이디 찾기</a>
			  </li>
			  
			  <li class="active"style="height:100%;">
			  	<a href="#" >비밀번호찾기</a>
			  </li>
    	</c:if>
	  
	</ul>
</div>