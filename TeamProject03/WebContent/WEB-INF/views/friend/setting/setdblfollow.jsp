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

<!-- 서로이웃 맺기 -->
<form style="background-color: #fff;">
<ul class="nav nav-tabs" role="tablist" id="myTab">
  <li role="presentation" class="active" ><a href="#" id="friendtab">받은신청</a></li>
  <li role="presentation"><a href="#" id="grouptab">보낸신청</a></li>
  <li role="presentation"><a href="#" id="seqtab">안내메시지</a></li>
  <br><br>

        <!-- 받은신청 탭_내용 include -->
		<%-- <jsp:include page="f_receive.jsp" flush="false">
			<jsp:param name="param" value="value1" />
		</jsp:include> --%>
		
		<!-- 받은신청 탭_내용 include -->
		<jsp:include page="f_send.jsp" flush="false">
			<jsp:param name="param" value="value1" />
		</jsp:include>
		
		
	</ul>

</form>
<br><br>

<!-- 페이징 -->
<div align="center">
<nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>
<!-- 페이징 -->