<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVERY AIR / Board</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/board/boardSelect.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/asiana/reset.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/header.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/mypage/mypageHeader.css">

	<title>AIRLINE ADMIN</title>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/reset.css">
 <!-- Custom fonts for this template-->
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css">
 <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

   <!-- Custom styles for this template-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin/sb-admin-2.min.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin/adminMain.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin/admin2_1.css">
	


</head>
<body>

<header>
</header>



<!-- <div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option selected="selected" value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>

</div> -->


<!---- container ---->
<div class = "container">
	<h3>공지사항</h3>
	<!-- <div class="btn_area">
		<a href="#" id="delete_btn">삭제하기</a>
		<a href= "#" id="update_btn">수정하기</a>
	</div> -->
	<div class = "list_view">
		<div class="list_view_title">
			<div class="left">
				<p class="title">${b.boardTitle}</p>
			</div>
			<div class="right">
				<div class= "hit"><span>조회수 ${b.count}</span></div>
				<span class="date">${b.createDate}</span>
			</div>
		</div>
			<div class="list_view_cont">
				${b.boardContent}
			</div>
			<div class="list_view_ctrl">
				<div>
					<span class="prev">다음글</span>
					 <a href="./noticeSelect?num=${next.num}&menu=${param.menu}&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}">${next.title}</a>
					<c:if test="${next eq null}"><a>다음글이 없습니다.</a></c:if>
				</div>
				<div>
					<span class="next">이전글</span>
					<a href="./noticeSelect?num=${prev.num}&menu=${param.menu}&curPage=${param.curPage}&search=${param.search}&kind=${param.kind}">${prev.title}</a>
					<c:if test="${prev eq null}"><a>이전글이 없습니다.</a></c:if>
				</div>
			</div>
			<c:if test="${loginUser.userId eq 'admin'}">
			<div class="btn_area">
					<a href="${pageContext.request.contextPath}/update.bo?bno=${vo.boardNo}" id="delete_btn">삭제하기</a>
					<a href="${pageContext.request.contextPath}/delete.bo?bno=${vo.boardNo}" id="update_btn">수정하기</a>
			</div>
			</c:if>
			<div class="btn_wrap">
					<a href="${pageContext.request.contextPath}/adminServiceM.ad" id="btnList" type="button">목록보기</a>
			</div>
	</div>


</div>




<script type="text/javascript">

function getParam(sname) {
    var params = location.search.substr(location.search.indexOf("?") + 1);
    var sval = "";
	    params = params.split("&");

    	for(var i=0; i<params.length; i++){
	        temp = params[i].split("=");
        if([temp[0]] == sname){ 
            sval = temp[1]; 
            }
	    }
	    return sval;
	}

</script>




</body>
</html>