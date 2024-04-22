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
	.container { width:100%; position:absolute }
	.page { clear:both; height:100vh; }
	#page1 { background-color:#c9dff2 }
	#page2 { background-color:#5d97f5 }
	#page3 { background-color:#f5f295 }
	#page4 { background-color:#f5c573 }
	.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<c:if test="${not empty message }">
		<div style="width:1400px; margin:0 auto;">${message }</div>
		</c:if>
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${hpath }/EditMember.do?id=${sid }">마이페이지</a></li>
			    <li class="breadcrumb-item active" aria-current="page">회원정보</li>
			  </ol>
			</nav>
			<hr>
			<h3 class="page_title">회원정보</h3>
			<form action="${path0 }/EditMemberPro.do" method="post" onsubmit="return editCheck(this)">
				<table class="table table-striped" style="width:80%; margin:0 auto;">
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td>
								<input type="text" name="id" id="id" class="form-control" value="${member.id }" required readonly>
							</td>
						</tr>
						<tr>
							<th><label for="pw">비밀번호</label></th>
							<td>
								<input type="password" name="pw" id="pw" class="form-control" value="${member.pw }" required>
							</td>
						</tr>
						<tr>
							<th><label for="pw2">비밀번호 확인</label></th>
							<td>
								<input type="password" name="pw2" id="pw2" class="form-control" value="${member.pw }" required>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" value="${member.name }" required>
							</td>
						</tr>
						<tr>
							<th><label for="birth">생년월일</label></th>
							<td>
								<input type="date" name="birth" id="birth" class="form-control" value="${member.birth }" required>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일</label></th>
							<td>
								<input type="email" name="email" id="email" class="form-control" value="${member.email }" required>
							</td>
						</tr>
						<tr>
							<th><label for="tel">연락처</label></th>
							<td>
								<input type="tel" name="tel" id="tel" class="form-control" value="${member.tel }" required>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button-container" style="display: flex; justify-content: space-between; width:80%; margin:0 auto;">
					<div class="button">
						<button type="submit" class="btn btn-info">회원정보수정</button>
						<button type="reset" class="btn btn-danger" onclick="location.href='/pro01'">취소</button>
					</div>
					<div class="button" style="float: right;">
						<a href="${path0 }/DelMember.do?id=${sid }" onclick="outMember()" class="btn btn-secondary">회원탈퇴</a>
					</div>
				</div>
			</form>
			<script>
			function editCheck(f) {
				if(f.pw.value!=f.pw2.value) {
					alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
					f.pw.focus();
					return false;
				}
				else {
					alert("회원정보 수정이 완료되었습니다!");
				}
			}
			function outMember() {
				alert("회원탈퇴가 완료되었습니다.");
			}
			</script>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>