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


<!-- 이웃, 그룹 관리 창 -->

<h3><strong>열린이웃,그룹관리</strong></h3>
<hr>
서로이웃 신청받기 <input type ="radio" name="dblfollow" checked="checked">사용</input>&nbsp;&nbsp;
<input type ="radio" name="dblfollow">사용하지 않음</input>
<hr>
<div align="center">
<input type="submit" id="btndblfollowOk" value="확인"/>
</div>

<!-- 서로이웃 받기 사용 시 div -->
<div id="dblfollow_on" style="position:absolute; top:300px; left:400px; z-index:2; 
     background-color: #fff; border:1px solid #000; 
     width:300px; height:100px; display: none;">
  <h5>서로이웃 신청을 받을 수 있습니다.<button type="button" id="" onclick="btnClose();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>&nbsp;&nbsp;</button></h5>
  <br>
  <div align="center"><input type="submit" value="확인" onclick="location.href='setfriendGroup.do'"></div>
</div>
<!-- 서로이웃 받기 사용 시 div -->



<!-- 서로이웃 받기 사용하지 않을 시 div -->
<div id="dblfollow_off" style="position:absolute; top:300px; left:400px; z-index:2; 
     background-color: #fff; border:1px solid #000; 
     width:300px; height:100px; display: none;">
  <h5>서로이웃 신청을 받지 않습니다.<button type="button" id="" onclick="btnClose();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>&nbsp;&nbsp;</button></h5>
  <br>
  <div align="center"><input type="submit" value="확인" onclick="location.href='setfriendGroup.do'"></div>
</div>
<!-- 서로이웃 받기 사용하지 않을 시 div -->



<form style="background-color: #fff;">
<div id="con">
<div role="tabpanel">


  
<ul class="nav nav-tabs" role="tablist" id="myTab">

  <li rel="defaulttab" role="presentation" class="active" >
    <a href="#defaulttab"  aria-controls="home" role="tab" data-toggle="tab">열린이웃</a>
  </li>
  <li rel="grouptab" role="presentation">
    <a href="#grouptab"  aria-controls="presentation" role="tab" data-toggle="tab">이웃그룹</a>
  </li>
  <li rel="seqtab" role="presentation">
    <a href="#seqtab"  aria-controls="presentation" role="tab" data-toggle="tab">이웃순서</a>
  </li>
  <div align="right">
    <input type="text" id="searchbar" value="" placeholder="별명,블로그명,ID"/>&nbsp;&nbsp;
    <input type="submit" id="btnSearch" value="검색"/>
  </div>
  <br>
  <br>


		<div id="others">
			<div role="tab_con" class="tab_con" id="defaulttab">
				<!-- 열린이웃 탭 클릭시_include -->
				<jsp:include page="openfriend.jsp" flush="true" />
				<%-- <jsp:param name="param" value="value1"/>
                </jsp:include> --%>
			</div>


			<div role="tab_con" class="tab_con" id="grouptab">
				<!-- 이웃그룹 탭 클릭시_include -->
				<jsp:include page="friendgroup.jsp" flush="true" />
			</div>

			<div role="tab_con" class="tab_con" id="seqtab">
				<!-- 이웃순서 탭 클릭시_include -->
				<jsp:include page="friendseq.jsp" flush="true" />
			</div>
		</div>
	</ul>
</div> 
</div>  
</form>

<script type="text/javascript">
//탭클릭에 따른 내용 변경
$(function (){
	$(".tab_con").hide();
	$(".tab_con:first").show();
	
	$("#con ul.nav-tabs li").click(function(){
		$("#con ul.nav-tabs li").removeClass("active").css("color","red");
		$(this).addClass("active").css("color","yellow");
		$("#others .tab_con").hide();
		var actTab=$(this).attr("rel");
		$("#"+actTab).show();
	});
});

$(function () {
    $('#myTab a:first').tab('show')
  })
  
//서로이웃 받기(사용)_확인 버튼 클릭시 div보이기
$("#btndblfollowOk").click(function(){
	document.all.dblfollow_on.style.display="block";
});

//서로이웃 받기(사용하지않음)_확인 버튼 클릭시 div보이기
$("#btndblfollowOk").click(function(){
	document.all.dblfollow_off.style.display="block";
});

//div에 X닫기 버튼 클릭시
function btnClose(){
	document.all.dblfollow_on.style.display = "none";
	document.all.dblfollow_off.style.display ="none";
}

//검색 버튼 클릭시
$("#btnSearch").click(function(){
	if($("#searchbar").val()==""){
		alert('검색어를 입력해주세요.');
	}
	
});


</script>