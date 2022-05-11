<%@page import="com.udon.vo.ProductImageVo"%>
<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.PostVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	PostVo pvo = DAO.getPost(Integer.parseInt(request.getParameter("p_id")));
	ProductImageVo ivo = DAO.getImg(Integer.parseInt(request.getParameter("p_id")));
	pageContext.setAttribute("pvo", pvo);
	pageContext.setAttribute("ivo", ivo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailpage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="./css/common.css" rel="stylesheet" />
<link href="./css/detailpage.css" rel="stylesheet" />
<style>
*.modal-header {
	background-color: #f5f1ee;
}

#exampleModal, #staticBackdrop {
	background-color: #f5f1ee;
}
</style>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main style="margin-bottom: 100px;">
		<div class="container shadow rounded-3 mt-4 mb-4 w-50 bg-light">
			<div class="card mb-3 border-0">
				<div class="card-photo">
					<img src="./uploadedFiles/${ivo.file_name }" class="card-img-top" alt="...">
				</div>
				<div class="card-body">
					<div class="d-flex justify-content-between">
						<div class="align-self-start">
							<h5 class="card-title text-start fw-bold">${pvo.m_name }</h5>
							<p class="card-text"><img src="./img/지역로고.png" width="12" height="12" alt="지역로고">
							${pvo.region_id }</p>
						</div>
						<div id="bt" class="btn-group" role="group"
							aria-label="Basic mixed styles example">
							<button type="button" class="btn btn-danger opacity-75"
								data-bs-toggle="modal" data-bs-target="#exampleModal">
								<strong>신고하기</strong>
							</button>
							<button type="button" class="btn btn-warning opacity-75">
								<strong>우동톡</strong>
							</button>
						</div>
					</div>
					<hr>
					<h4 class="card-title fw-bold">${pvo.title }</h4>
					<small class="text-muted">${pvo.reg_date }</small>
					<h4 class="card-title fw-bold">${pvo.price }</h4>
					<p class="card-text mt-3">${pvo.content }</p>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Modal -->
	<div class="modal fade " id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content bg-success p-2 text-dark bg-opacity-10 ">
				<div class="modal-header shadow p-3 mb-5 bg-body rounded  ">
					<h3 class="modal-title" id="exampleModalLabel">
						<img src="./img/신고하기로고.png" width="30" height="35" alt="신고하기">
						<strong>신고하기</strong>
					</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 전문 판매업자 같아요 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 비매너 사용자에요 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 욕설을해요 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 성희롱을 해요 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 거래 / 환불 분쟁 신고 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 사기당했어요 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 연애 목적의 대화를 시도해요 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 다른 문제가 있어요 </label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<!--<a href="relay.jsp"> -->
					<button type="button" class="btn btn-danger opacity-75 "
						data-bs-toggle="modal" data-bs-target="#staticBackdrop">우동마켓팀에게
						전달</button>
					<!-- </a> -->
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content bg-success p-2 text-dark bg-opacity-10">
				<div class="modal-header shadow p-3 mb-5 bg-body rounded">
					<h3 class="modal-title" id="staticBackdropLabel">
						<strong>신고접수</strong>
					</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<strong>사용자의 신고가 접수되었습니다.</strong>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						data-bs-dismiss="modal">
						<strong>확인</strong>
					</button>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>