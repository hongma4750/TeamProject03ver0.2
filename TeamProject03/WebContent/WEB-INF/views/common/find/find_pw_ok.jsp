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


<div style="height:100%; ">
    
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">     
    <br><br>
    		<div>
                비밀번호 찾기
       		 </div>
       		 
       		 <hr>
       		 
        <div class="panel panel-success">
        
        	
       		 
            <div class="panel-body">
                
                
				  <label>
				    회원 아이디 : <span>${find_user_pw.m_id }</span>
				    <c:remove var="find_user_pw" scope="session" />
				  </label>
				  
				  <div id="newPw">
				  
				  	<input type="password" class="form-control" name="m_pw" placeholder="새로운 비밀번호" style="width:30%;" id="m_pw">
				  	<div id="checkPw" style="display:none"></div>
				  	
				  	<input type="password" class="form-control" name="pwChk" placeholder="새로운 비밀번호 확인" 
				  	style="width:30%;" id="m_pwChk">
				  	<div id="checkPwed" style="display:none"></div>
				  	
				  </div>
				

				
				<div >
				  <div id="checkNoauto">

				  </div>
				  
				</div>
                
            </div>
 			
 			
        </div>
        
        <div style="text-align:center;">
			<input type="button" value="확인" onclick="location.href='index.do'">
		</div>
		
    </div>
    
</div>



<script>
$(document).ready(function(){
	 $(document).mousedown(function(e){

	 $("#m_pw").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_pw').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckPw();
				             }   
			         }
			     });
			 });
	 });
	 
	 $("#m_pwChk").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_pwChk').each(function(){
			         if( $(this).css('display') == 'block' )
			         {
			        	 var l_position = $(this).offset();
			             l_position.right = parseInt(l_position.left) + ($(this).width());
			             l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());
			             
			             if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
				                 && ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) )
				             {
				                 //alert( 'popup in click' );
				             }
				             else
				             {
				                 //alert( 'popup out click' );
				                 BaseCheckedPw();
				             }   
			         }
			     });
			 });
	 	});
	 
	 });
});

//비밀번호
function BaseCheckPw(){
	var m_pw = $("#m_pw").val();
	
	if($("#m_pw").val().length==0){
		//비밀번호 입력 x
		putYourPw(0);
	}else {
		var pwCheck01 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,16}$/;
		var pwCheck02 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+-=/,.<>]).{6,16}$/;
		var pwCheck03 = /^(?=.*[0-9])(?=.*[!@#$%^&*()_+-=/,.<>]).{6,16}$/;
		
		if(pwCheck01.test(m_pw) || pwCheck02.test(m_pw) || pwCheck03.test(m_pw)){
			putYourPw(2);
			return;
		}else{
			putYourPw(1);
		}

	}
}


function putYourPw(a){
	
	if(a == "0"){
		$("#checkPw").show();
		$("#checkPw").html("필수 항목 입니다.");
		$("#checkPw").css("color","#FF0000");
		
		$("#checkPwed").show();
		$("#checkPwed").html("필수 항목 입니다.");
		$("#checkPwed").css("color","#FF0000");
		
	}else if(a == "1" ){
		$("#checkPw").show();
		$("#checkPw").html("6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
		$("#checkPw").css("color","#FF0000");
	}else if(a == "2"){
		$("#checkPw").hide();
		
		
	}
}

//비밀번호 확인
function BaseCheckedPw(){
	var m_pwChk = $("#m_pwChk").val();
	
	if(m_pwChk.length==0){
		//아이디를 아무것도 입력 x
		putYourPwed(0);
	}else if($("#m_pw").val() != m_pwChk){
		putYourPwed(1);
	}else if($("#m_pw").val() == m_pwChk){
		putYourPwed(2);
	}
}

function putYourPwed(a){
	if(a=="0"){
		$("#checkPwed").show();
		$("#checkPwed").html("필수 항목 입니다.");
		$("#checkPwed").css("color","#FF0000");
	}else if(a=="1"){
		$("#checkPwed").show();
		$("#checkPwed").html("비밀번호가 일치하지 않습니다.");
		$("#checkPwed").css("color","#FF0000");
	}else if(a=="2"){
		$("#checkPwed").hide();
		
	}
}

	 
</script>




