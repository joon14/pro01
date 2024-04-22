<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
.container { width:1400px }
.page { clear:both; height:100vh }
#page1 { background-color:#c9dff2 }
#page2 { background-color:#5d97f5 }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:5%; }
th.item2 { width:15%; }
th.item3 { width:15%; }
th.item4 { width:15%; }
th.item5 { width:10%; }
th.item6 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<div class="row">
		<aside id="lnb" class="col-3">
			<nav>
				<ul>
					<li><a href="${path0 }/MemberList.do">회원목록</a></li>
					<li><a href="${path0 }/NoticeList.do">게시판 관리</a></li>
				</ul>
			</nav>
		</aside>
		<section class="page col-9" id="page1">
			<div style="width:100%; margin:0 auto;">
				<h3 class="page_title">회원 목록</h3>
				<div>
					<table class="table table-striped" id="tb1">
						<thead class="thead-light">
							<tr>
								<th class="item1">번호</th>
								<th class="item2">아이디</th>
								<th class="item3">비밀번호</th>
								<th class="item4">이름</th>
								<th class="item5">생년월일</th>
								<th class="item6">이메일</th>
								<th class="item7">연락처</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty memberList }">
								<c:forEach var="dto" items="${memberList }" varStatus="status">
								<tr>
									<td>
										<input type="checkbox" name="id" id="id${status.count }" value="${dto.id }">
										${status.count }
									</td>
									<td>${dto.id }</td>
									<td>${dto.pw }</td>
									<td>${dto.name }</td>
									<td>${dto.birth }</td>
									<td>${dto.email }</td>
									<td>${dto.tel }</td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty memberList }">
								<tr>
									<td colspan="7"><strong>회원이 존재하지 않습니다.</strong></td>
								</tr>
							</c:if>
						</tbody>
					</table>
					<script>
					$(document).ready(function(){
						$("#tb1").DataTable({
							order:[[0,"desc"]]
						});
					});
					</script>
					<hr>
				</div>
			</div>
		</section>
	</div>		
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>