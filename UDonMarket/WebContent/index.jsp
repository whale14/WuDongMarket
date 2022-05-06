<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String member_id = (String) session.getAttribute("member_id");
	System.out.print(member_id);
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
	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
<footer> </footer>
</html>