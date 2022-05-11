<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	MemberVo mvo = DAO.selectMemberWhereMemberId(Integer.parseInt((String)session.getAttribute("member_id")));
	pageContext.setAttribute("mvo", mvo);
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
<link href="./css/registration.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
	integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI="
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main>
		<div class="container w-50 shadow rounded-3 mt-4 mb-4">
			<h4 class="mb-3">중고거래 글쓰기</h4>
			<form class="validation-form" action="registration_ok.jsp"
				method="post" enctype="multipart/form-data" novalidate>
				<div class="row mt-3 mb-3">
					<div class="col-8">
						<input class="form-control" name="title" placeholder="글 제목">
					</div>
					<div class="col-4">
						<input class="form-control" name="price" placeholder="가격(숫자만 입력)">
					</div>
				</div>
				<textarea class="form-control mb-3" rows="5"
					placeholder="${mvo.region_id }에 올릴 게시글 내용을 작성해주세요." name="content"></textarea>
				<input id="input_imgs" type="file" class="form-control"
					name="file_name">
				<div>
					<input type="submit" value="판매등록" class="btn btn-primary mt-4">
				</div>
			</form>
		</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>

	<script>
	
	</script>
	<script type="text/javascript">
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>