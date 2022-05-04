<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
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
<link href="./css/index.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main style="margin-bottom: 100px;">
		<div class="container shadow rounded-3 mt-4 mb-4">
			<div class="search-area">
				<form action="search.jsp?keyword=**">
					<input type="text" class="form-control" name="keyword"
						placeholder="search..">
				</form>
			</div>
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
		</div>
	</main>
	<footer class="footer">
		<div class="container"
			style="padding-top: 100px; padding-bottom: 100px;">
			<div class="d-flex justify-content-between text-white">
				<p class="fs-3 fw-bold">우동마켓</p>
				<div>
					<p class="fs-5 fw-bold">E-mail</p>
					<p>김동욱-tldhsrkwhr11@naver.com</p>
					<p>윤정민-yjm38422@naver.com</p>
					<p>이상규-zaku20@naver.com</p>
				</div>
				<div>
					<p class="fs-5 fw-bold">PHONE</p>
					<p>김동욱 +82 10-8000-3983</p>
					<p>윤정민 +82 10-4059-9601</p>
					<p>이상규 +82 10-2548-7326</p>
				</div>
				<div>
					<p class="fs-5 fw-bold">ITWILL</p>
					<p>서울특별시 강남구 테헤란로 124 4층 (역삼동, 삼원타워)</p>
					<p>사업자등록번호 : 172-87-02395</p>
				</div>
			</div>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
<footer> </footer>
</html>