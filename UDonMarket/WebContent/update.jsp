<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String member_id = (String) session.getAttribute("member_id");
MemberVo mvo = DAO.selectMemberWhereMemberId(Integer.parseInt(member_id));
pageContext.setAttribute("mvo", mvo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="./css/common.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>

	<main style="margin-bottom: 100px;">
		<div class="container shadow rounded-3 mt-4 mb-4 w-50 p-5 bg-light">
			<h1>회원정보 수정</h1>
			<form action="update_ok.jsp">
				<div class="row mt-5">
				<div class="mb-3">
					<label for="member_id">전화번호</label> <input type="text"
						class="form-control" id="member_id" value="0${mvo.member_id }"
						name="member_id">
				</div>
				<div class="mb-3">
					<label for="member_pw">비밀번호</label> <input type="text"
						class="form-control" id="member_pw" value="${mvo.member_pw }"
						name="member_pw">
				</div>
				<div class="mb-3">
					<label for="member_name">이름(닉네임)</label> <input type="text"
						class="form-control" id="member_name" value="${mvo.member_name }"
						name="member_name">
				</div>
				<div class=" mb-3">
					<label for="region_id">지역</label> <select class="form-select"
							aria-label="Default select example" id="region_id" name="region_id" required>
							<option value="" selected disabled hidden>지역을 선택하세요</option>
							<option value="서울특별시">서울특별시</option>
							<option value="강원도">강원도</option>
							<option value="경기도">경기도</option>
							<option value="경상도">경상도</option>
							<option value="전라도">전라도</option>
							<option value="제주도">제주도</option>
							<option value="충청도">충청도</option>
							<option value="광주광역시">광주광역시</option>
							<option value="대전광역시">대전광역시</option>
							<option value="부산광역시">부산광역시</option>
							<option value="울산광역시">울산광역시</option>
							<option value="인천광역시">인천광역시</option>
						</select>
				</div>
				<hr>
				<button class="btn btn-primary col-12 mt-3">회원정보 수정</button>
				<a class="btn btn-primary col-12 mt-3 mb-4 text-light"
					href="javascript:window.history.back();">수정 취소</a>

			</form>
		</div>
	</main>

	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>