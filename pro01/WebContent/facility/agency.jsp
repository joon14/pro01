<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px }
.page { clear:both; }
#page1 { background-color:#c9dff2; min-height:150vh; }
#page2 { background-color:#5d97f5 }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
.loadmap { clear:both; }
.loadmap ul { list-style:none; padding:0; margin:0; clear:both; width:100%;
height:200px; }
.loadmap ul li { float:left; width:15%; padding:0px; margin:10px; }
.loadmap ul li .circle { clear:both; width:80px; height:80px; line-height:80px;
font-weight:700; background-color:#ff2965;
border-radius:45px; text-align:center; color:#fff; }
.loadmap ul li .his { padding:10px; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px;margin:0 auto">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="">이용안내</a></li>
			    <li class="breadcrumb-item active" aria-current="page">주요 시설 안내</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/market.jsp">시장</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/mart.jsp">마트</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/education.jsp">교육</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/hospital.jsp">병원</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/facility/agency.jsp">기관</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">기관</h3>
			<hr>
			<h4><strong>동대문구 답십리도서관</strong></h4>
			<div class="jumbotron">
				<p>
					동대문구답십리도서관은 서울특별시 동대문구에 위치한 공공 도서관이다.
					<br>
					[주소] 서울특별시 동대문구 답십리동 서울시립대로4길
					<br>
					[전화번호] 02-982-1959
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%8F%99%EB%8C%80%EB%AC%B8%EA%B5%AC%EB%8B%B5%EC%8B%AD%EB%A6%AC%EB%8F%84%EC%84%9C%EA%B4%80/data=!3m1!4b1!4m6!3m5!1s0x357cbb51e3e66eb3:0x13e1d87c1f834219!8m2!3d37.573151!4d127.050499!16s%2Fg%2F11fhlkgpxq?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://www.l4d.or.kr/dsn/index.do')">홈페이지</button>
			</div>
			<h4><strong>답십리 1동 주민센터</strong></h4>
			<div class="jumbotron">
				<p>
					서울특별시의 주민자치센터
					<br>
					[주소] 서울특별시 동대문구 답십리동 477-9
					<br>
					[전화번호] 02-2171-6223
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%8B%B5%EC%8B%AD%EB%A6%AC1%EB%8F%99+%EC%A3%BC%EB%AF%BC%EC%84%BC%ED%84%B0/data=!3m1!4b1!4m6!3m5!1s0x357cbb4dfc3081f7:0xc8a08229650ef0e0!8m2!3d37.5718469!4d127.0511771!16s%2Fg%2F11c3_b09bs?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://www.ddm.go.kr/www/dongStoryView.do?key=304&dongCode=dongCode01')">홈페이지</button>
			</div>
			<h4><strong>답십리 2동 주민센터</strong></h4>
			<div class="jumbotron">
				<p>
					서울특별시의 주민자치센터
					<br>
					[주소] 서울특별시 동대문구 한천로11길 18
					<br>
					[전화번호] 02-2171-6242
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%8B%B5%EC%8B%AD%EB%A6%AC2%EB%8F%99+%EC%A3%BC%EB%AF%BC%EC%84%BC%ED%84%B0/data=!3m1!4b1!4m6!3m5!1s0x357cbb35f5928fa3:0xed36da882aa98f52!8m2!3d37.5673695!4d127.0612392!16s%2Fg%2F1td4mn96?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://www.ddm.go.kr/www/dongStoryView.do?key=320&dongCode=dongCode02')">홈페이지</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>