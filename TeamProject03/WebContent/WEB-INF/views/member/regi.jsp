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
    
    
    #regiBtn{
    	 background-color: #1FBC02;
    	 border-color: #1FBC02;
    	 color:white;
    }
    
    .form-control:focus{
   		  outline: none !important;
    border-color: #1FBC02;
    box-shadow: 0 0 10px #1FBC02;
    }
    
	.btn-primary {
		color: #999999;
		background-color: white;
		border-color: #999999
	}
    
    .btn-primary.active, .btn-primary.focus, .btn-primary:active,
	.btn-primary:focus, .btn-primary:hover, .open>.dropdown-toggle.btn-primary{
		border-color:#1FBC02;
    	color:#1FBC02;
    	background-color:white;
	}
    
    

</style>



<div class="container">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    
    	<div class="panel-heading">
                <div class="panel-title" style="text-align:center; font-size:80px;">
                	<a href="index.do" style="text-decoration: none; color:#1FBC02;">꽃밭에 블로그</a>
                </div>
        </div>
        
       <form id="login-form" action="regiAF.do" method="post">
            
        <div class="panel panel-success">
        
            <div class="panel-body">
                    <div>
                        <input type="text" class="form-control" name="m_id" placeholder="아이디" autofocus>
                    </div>
                   
                    <div>
                        <input type="password" class="form-control" name="m_pw" placeholder="비밀번호">
                    </div>
                    
                    <div>
                        <input type="password" class="form-control" placeholder="비밀번호 확인">
                    </div>
            </div>
            
        </div><!-- class="panel panel-success" -->
            
            <div class="panel panel-success">
            <div class="panel-body">
                
                    <div>
                        <input type="text" class="form-control" name="m_name" placeholder="이름">
                    </div>
                    

                        <div class="btn-group" data-toggle="buttons" style="width:100%;">

						  <label class="btn btn-primary" id="genderChk" style="width:50%;">
						    <input type="radio" name="m_gender" id="option1" autocomplete="off" value="m"> 남자
						  </label>

						  <label class="btn btn-primary" id="genderChk" style="width:50%; ">
						    <input type="radio" name="m_gender" id="option2" autocomplete="off" value="w"> 여자
						  </label>
 							 
						</div>	
						<br>
						<div id="row" style="text-align:center;">
							<div class="col-md-2" style="font-size:20px; ">
								<p class="text-muted" style="margin:auto; padding:auto;">생일</p>
							</div>
							
							<div class="col-md-10">
								<div class="col-md-4">
									<div>
				                        <input type="text" class="form-control" name="b_year" placeholder="년(4자)">
				                    </div>
								</div>
								<div class="col-md-4">
									<select class="form-control" name="b_month">
									  <option selected>월</option>
									  <option value="01">1</option>
									  <option value="02">2</option>
									  <option value="03">3</option>
									  <option value="04">4</option>
									  <option value="05">5</option>
									  <option value="06">6</option>
									  <option value="07">7</option>
									  <option value="08">8</option>
									  <option value="09">9</option>
									  <option value="10">10</option>
									  <option value="11">11</option>
									  <option value="12">12</option>
									</select>
								</div>
								<div class="col-md-4">
									<div>
				                        <input type="text" class="form-control" name="b_day" placeholder="일">
				                    </div>
								</div>	
						</div><!-- class="col-md-10" -->
						
            		</div><!-- id="row" -->

            </div>
            
        </div><!-- class="panel panel-success" -->
            
            
            <div class="panel panel-success">
            <div class="panel-body">
                    <div>
                        <input type="email" class="form-control" name="m_email" placeholder="이메일">
                    </div>
                   
                    <div>
                        <input type="text" class="form-control" name="m_phone" placeholder="휴대전화">
                    </div>   
            </div>    <!-- class="panel-body" -->
        </div><!-- class="panel panel-success" -->

    		<div>
                <button type="submit" class="form-control btn btn-primary" id="regiBtn" style="height:50px;">가입하기</button>
            </div>
            
           </form>
            
        </div>
        
    </div>

