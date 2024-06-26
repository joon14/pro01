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
.loadmap ul li { float:left; width:30%; padding:0px; margin:20px 23px auto; }
.loadmap ul li .circle { clear:both; width:100px; height:80px; line-height:80px;
font-weight:700; background-color:#035aa6;
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
		<div style="width:1400px;margin:15px auto">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${hpath }/intro/origin.jsp">지역소개</a></li>
			    <li class="breadcrumb-item active" aria-current="page">연혁</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/origin.jsp">지명 유래</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/intro/history.jsp">연혁</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/map.jsp">오시는 길</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">연혁</h3>
			<hr>
			<div class="jumbotron" style="padding:1rem;">
				<p>
					<br>&nbsp;조선조에는 한성부(漢城府)에 속하였는데 영조(英祖) 27년(1751년)에 도성 방어를 위해 간행된「도성삼군문분계총록(都城三軍門分界總錄)」을 보면 
					한성부(漢城府) 동부(東部) 인창방(仁昌坊:城外) 踏十里契로 나타난다. 
					<br><br>&nbsp;그 뒤 甲午改革 때에는 한성부(漢城府) 동서(東署) 인창방(仁昌坊) 동소문외계(東小門外契) 답십리계로 되었다. 
					일제의 강점으로 국권을 잃은 뒤인 1911년 4월 1일(경기도령 제3호) 이 곳은 경성부(京城府) 인창면(仁昌面)에 속하고, 
					이어서 1914년 4월 1일 경기도 고양군 숭인면에 편입되었다가 1936년 4월 1일(총독부령 제8호) 경성부 확장에 따라 경성부에 편입되어 
					답십리정(踏十里町)이라 하였다.
					<br><br>&nbsp;1943년 4월 1일(부령 제163호)에 구제 실시에 따라 답십리정은 동대문구에 속하게 되었다. 
					광복후 1946년 10월 1일 일제식 동명 개칭에 따라 답십리정은 답십리동으로 되었다.<br>
				</p>
			</div>
			<br>
			<div class="loadmap">
				<ul>
					<li>
						<div class="circle">1751</div>
						<div class="his"><strong>영조 27년</strong> - 한성부 동부 인창방 답십리</div>
					</li>
					<li>
						<div class="circle">1914</div>
						<div class="his"><strong>1914.04.01</strong> - 경기도 고양군 숭인명 답십리</div>
					</li>
					<li>
						<div class="circle">1936</div>
						<div class="his"><strong>1936.04.01</strong> - 경기도 경성부 답십리정(구제실시)</div>
					</li>
					<li>
						<div class="circle">1946</div>
						<div class="his"><strong>1946.10.01</strong> - 서울특별시 동대문구 답십리동</div>
					</li>
					<li>
						<div class="circle">1959</div>
						<div class="his"><strong>1959.10.31</strong> - 답십리1동, 2동 분동</div>
					</li>
					<li>
						<div class="circle">1970</div>
						<div class="his"><strong>1970.05.18</strong> - 답십리3동, 4동 분동 신설</div>
					</li>
					<li>
						<div class="circle">1977</div>
						<div class="his"><strong>1977.09.01</strong> - 답십리1동에서 분동하여 답십리 5동 신설</div>
					</li>
					<li>
						<div class="circle">2008</div>
						<div class="his"><strong>2008.08.11</strong> - 답십리3동(답십리3동과 답십리5동 통합)</div>
					</li>
					<li>
						<div class="circle">2009</div>
						<div class="his"><strong>2009.05.04</strong> - 답십리1동(답십리1동과 답십리3동 통합)</div>
					</li>
				</ul>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>