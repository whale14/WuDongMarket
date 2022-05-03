<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background-color: #f5f1ee;
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
}
</style>
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row ">
			<div class="input-form col-md-12 mx-auto shadow rounded-3">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" action="join_ok.jsp" novalidate>
					<div class="mb-3">
						<label for="member_id">전화번호</label> <input type="text"
							class="form-control" id="member_id" placeholder="전화번호"
							name="member_id" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="member_pw">비밀번호</label> <input type="password"
							class="form-control" id="member_pw" placeholder="비밀번호"
							name="member_pw" required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="member_name">별명</label> <input type="text"
							class="form-control" id="member_name" placeholder="홍길동"
							name="member_name" required>
						<div class="invalid-feedback">별명을 입력해주세요.</div>
					</div>

					<div class="mb-3">
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

					<hr class="mb-4">
					<div class="mb-4">
						<button class="btn btn-primary btn-block" type="submit">가입
							완료</button>
					</div>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; UDON MARKET</p>
		</footer>
	</div>
	<script>
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