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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 부트스트랩 링크 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- 부트스트랩 링크 -->

<style>
    body {
        background: #f8f8f8;
        padding: 60px 0;
    }
    
    #login-form > div {
        margin: 15px 0;
    }
    
    
    #loginBtn{
    	 background-color: #1FBC02;
    	 border-color: #1FBC02;
    }
    
    .form-control:focus{
   		  outline: none !important;
    border-color: #1FBC02;
    box-shadow: 0 0 10px #1FBC02;
    }

</style>

<div class="container">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    	<div class="panel-heading">
                <div class="panel-title" style="text-align:center; font-size:80px;">
                	<a href="index.do" style="text-decoration: none; color:#1FBC02;">꽃밭에 블로그</a>
                </div>
        </div>
            
        <div class="panel panel-success">
        
            <div class="panel-body">
                <form id="login-form" action="loginAF.do" method="post">
                    <div>
                        <input type="text" class="form-control" name="m_id" placeholder="아이디" autofocus>
                    </div>
                    
                    <div>
                        <input type="password" class="form-control" name="m_pw" placeholder="비밀번호">
                    </div>
                    
                     <div>
                        <button type="submit" class="form-control btn btn-primary" id="loginBtn" style="height:50px;">로그인</button>
                    </div>
                </form>
                
                <hr>
                <div id="row" style="text-align:center;">
                	<small><a href="idfind.do?menu=id" style="text-decoration: none;color:#999999;">아이디 찾기</a></small>
                	|
                	<small><a href="pwfind.do?menu=pw" style="text-decoration: none;color:#999999;">비밀번호 찾기</a></small>
                	|
                	<small><a href="regi.do" style="text-decoration: none;color:#999999;">회원가입</a></small>
                </div>
            </div>
            
            
                
                    
            
            
        </div>
    </div>
</div>
