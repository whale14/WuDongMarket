<%@page import="com.udon.vo.PostVo"%>
<%@page import="java.util.List"%>
<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String member_id = (String) session.getAttribute("member_id");
%>
<% 

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="./css/common.css" rel="stylesheet" />
<link href="./css/index.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main style="margin-bottom: 100px;">
		<div class="container shadow rounded-3 mt-4 mb-4">
			<c:if test="${member_id==null }">
				전지역 최신 리스트 출력
			</c:if>
			<c:if test="${member_id!=null }">
				내지역 최신 리스트 출력
				

			</c:if>
			<div class="row mt-4">
				<div class="col-4">
					<a href="#">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top " alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">3분전</small>
								</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-4">
					<div class="card mb-3 border-0">
						<div class="card-photo">
							<img src="./img/예시이미지.jpg" class="card-img-top " alt="...">
						</div>
						<div class="card-body d-flex justify-content-between">
							<h5 class="card-title w-50 text-start bold">제목</h5>
							<p class="card-text">가격</p>
							<p class="card-text">
								<small class="text-muted">3분전</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card mb-3 border-0">
						<div class="card-photo">
							<img src="./img/예시이미지.jpg" class="card-img-top " alt="...">
						</div>
						<div class="card-body d-flex justify-content-between">
							<h5 class="card-title w-50 text-start bold">제목</h5>
							<p class="card-text">가격</p>
							<p class="card-text">
								<small class="text-muted">3분전</small>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-4">
					<div class="card mb-3 border-0">
						<div class="card-photo">
							<img src="./img/예시이미지.jpg" class="card-img-top " alt="...">
						</div>
						<div class="card-body d-flex justify-content-between">
							<h5 class="card-title w-50 text-start bold">제목</h5>
							<p class="card-text">가격</p>
							<p class="card-text">
								<small class="text-muted">3분전</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card mb-3 border-0">
						<div class="card-photo">
							<img src="./img/예시이미지.jpg" class="card-img-top " alt="...">
						</div>
						<div class="card-body d-flex justify-content-between">
							<h5 class="card-title w-50 text-start bold">제목</h5>
							<p class="card-text">가격</p>
							<p class="card-text">
								<small class="text-muted">3분전</small>
							</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card mb-3 border-0">
						<div class="card-photo">
							<img src="./img/예시이미지.jpg" class="card-img-top " alt="...">
						</div>
						<div class="card-body d-flex justify-content-between">
							<h5 class="card-title w-50 text-start bold">제목</h5>
							<p class="card-text">가격</p>
							<p class="card-text">
								<small class="text-muted">3분전</small>
							</p>
						</div>
					</div>
				</div>
			</div>
			<nav aria-label="Main list pages">
				<ul class="pagination pagination-lg justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true">이전</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">다음</a></li>
				</ul>
			</nav>
		</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
<footer> </footer>
</html>