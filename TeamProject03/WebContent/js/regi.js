/**
 * 
 */

var submitCheck = new Array(false,false,false,false,false,false,false,false,false,false);

$(document).ready(function(){
	 $(document).mousedown(function(e){
		 $('#m_id').each(function(){
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
			                 BaseIdCheck();
			             }   
		         }
		     });
		 }); 
	 
	 $("#option1").click(function(){
		 alert("ㅋㅋ");
	 });
	 
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
	 
	 $("#m_pwChecked").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_pwChecked').each(function(){
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
	 
	 $("#m_name").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_name').each(function(){
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
				                 BaseCheckName();
				             }   
			         }
			     });
			 });
	 	});
	 
	 $("#b_year, #b_month, #b_day").click(function(){
		 $(document).mousedown(function(e){
			 $('#b_year').each(function(){
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
				                 BaseCheckBirth();
				             }   
			         }
			     });
			 });
	 	});
	 
	 
	 $("#m_email").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_email').each(function(){
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
				                 BaseCheckEmail();
				             }   
			         }
			     });
			 });
	 	});
	 
	 $("#m_phone").click(function(){
		 $(document).mousedown(function(e){
			 $('#m_phone').each(function(){
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
				                 BaseCheckPhone();
				             }   
			         }
			     });
			 });
	 	});
	 
	 
	 
	 
	 
	 
	 
	 
	 });
	 
function BaseIdCheck(){
	if($("#m_id").val().length==0){
		//아이디를 아무것도 입력 x
		putYourId(0);
	}else {
		var languageCheck =  /^[a-zA-Z0-9_]{5,20}$/;
		
		if(languageCheck.test($("#m_id").val())){
			showallcust();
			return;
		}else{
			putYourId(1);
		}

	}
}

function showallcust(){
	var m_id = $("#m_id").val();
	
	$.ajax({
		type:"POST",
		url:"getId.do",
		
		data:"m_id="+m_id,
		success:function(msg){
			outputList(msg);
		}
		
	});
}

function outputList(msg){
	if(msg.message  == "Suc"){
		$("#chekedId").show();
		$("#chekedId").html("사용할 수 없는 아이디 입니다.");
		$("#chekedId").css("color","#FF0000");
		
	}else{
		$("#chekedId").show();
		$("#chekedId").html("멋진 아이디 입니다");
		$("#chekedId").css("color","#1DDB16");
		$("#m_id_checked").attr("value",$("#m_id").val());

		submitCheck[0] = true;

	}
} 

function putYourId(a){
	
	if(a == "0"){
		$("#chekedId").show();
		$("#chekedId").html("필수 항목 입니다.");
		$("#chekedId").css("color","#FF0000");
	}else if(a == "1" ){
		$("#chekedId").show();
		$("#chekedId").html("5~20자의 영문 소문자, 숫자만 사용 가능합니다.");
		$("#chekedId").css("color","#FF0000");
	}
}



 
function BaseCheckPw(){
	var m_pw = $("#m_pw").val();
	
	if($("#m_pw").val().length==0){
		//아이디를 아무것도 입력 x
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

function BaseCheckedPw(a){
	var m_pwcheck = $("#m_pwChecked").val();
	
	if($("#m_pwChecked").val().length==0){
		//아이디를 아무것도 입력 x
		putYourPwed(0);
	}else if($("#m_pw").val() != m_pwcheck){
		putYourPwed(1);
	}else if($("#m_pw").val() == m_pwcheck){
		putYourPwed(2);
	}
}

function BaseCheckName(a){
	var m_name = $("#m_name").val();
	
	if($("#m_name").val().length==0){
		putYourName(0);
	}else{
		putYourName(1);
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
		submitCheck[1]=true;
		
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
		submitCheck[2]=true;
	}
}

function putYourName(a){
	if(a=="0"){
		$("#checkName").show();
		$("#checkName").html("필수 항목 입니다.");
		$("#checkName").css("color","#FF0000");
	}else if(a=="1"){
		$("#checkName").hide();
		submitCheck[3]=true;
	}
}

function BaseCheckBirth(a){
	var m_year = $("#b_year").val();
	var m_month = $("#b_month").val();
	var m_day = $("#b_day").val();
	
	var languageCh =/^[0-9]*$/;
	
	var mm_year = parseInt(m_year);
	

	if(m_year.length != 4){
		putYourBirth("0");	
	}else if(m_month == "월"){
		putYourBirth("1");
	}else if(m_month != "월"){
		if(m_day.length==0){
			putYourBirth("2");
		}else if(languageCh.test(m_day)){
			putYourBirth("3");
		}
	}
	
	if(mm_year < 1916 || mm_year > 2016){
		putYourBirth("4");
	}
}

function putYourBirth(a){
	if(a == "0"){
		$("#checkBirth").show();
		$("#checkBirth").html("태어난 년도 4자리를 정확하게 입력하세요.");
		$("#checkBirth").css("color","#FF0000");
	}else if(a=="1"){
		$("#checkBirth").show();
		$("#checkBirth").html("태어난 월을 선택하세요.");
		$("#checkBirth").css("color","#FF0000");
	}else if(a=="2"){
		$("#checkBirth").show();
		$("#checkBirth").html("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
		$("#checkBirth").css("color","#FF0000");
	}else if(a=="3"){
		$("#checkBirth").hide();
		submitCheck[4] = true;
	}else if(a=="4"){
		$("#checkBirth").show();
		$("#checkBirth").html("정말이세요?");
		$("#checkBirth").css("color","#FF0000");
	}
}

function BaseCheckEmail(){
	var m_email = $("#m_email").val();
	
	if(m_email.length==0){
		putYourEmail(0);
	}else if(m_email.length>0){
		putYourEmail(1);
	}
}

function putYourEmail(a){
	if(a == "0"){
		$("#checkEmail").show();
		$("#checkEmail").html("필수 정보입니다.");
		$("#checkEmail").css("color","#FF0000");
	}else if(a=="1"){
		$("#checkEmail").hide();
		submitCheck[5] = true;
	}
}

function BaseCheckPhone(){
	var m_phone = $("#m_phone").val();
	var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
	
	if(m_phone.length==0){
		putYourPhone(0);
	}else if(m_phone.length==13){
		putYourPhone(1);
	  }
}

function putYourPhone(a){
	if(a=="0"){
		$("#checkPhone").show();
		$("#checkPhone").html("필수 정보입니다.");
		$("#checkPhone").css("color","#FF0000");
	}else if(a=="1"){
		$("#checkPhone").hide();
		submitCheck[6] = true;
	}
}


function go_submit(){
	
}



