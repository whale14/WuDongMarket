<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="./css/join.css" rel="stylesheet" />
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
<script type="text/javascript">
		function goJoin() {
			location.href = "join.jsp"
		}
</script>
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row ">
			<div class="input-form col-md-12 mx-auto shadow rounded-3">
				<h4 class="mb-3">로그인</h4>
				<form class="validation-form"
					action="login_ok.jsp" novalidate>
					<div class="mb-3">
						<label for="member_id">전화번호</label> <input type="text"
							class="form-control" id="member_id" placeholder="ex)01012345678"
							name="member_id" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="member_pw">비밀번호</label> <input type="password"
							class="form-control" id="member_pw" placeholder="비밀번호"
							name="member_pw" required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>

					<hr class="mb-4">
					<div class="row">
						<div class="col-md-3 mb-3">
							<button class="btn btn-primary btn-block" type="submit">로그인</button>
						</div>
					</div>
				</form>
				<button class="btn btn-primary btn-block" onclick="goJoin()">회원가입</button>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; UDON MARKET</p>
		</footer>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	
</body>

</html>