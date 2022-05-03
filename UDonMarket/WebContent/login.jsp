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
</head>

<body>
	<div class="container">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-success">
				<div class="panel-heading">
					<div class="panel-title">환영합니다!</div>
				</div>
				<div class="panel-body">
					<form id="login-form">
						<div>
							<input type="text" class="form-control" name="username"
								placeholder="Username" autofocus>
						</div>
						<div>
							<input type="password" class="form-control" name="password"
								placeholder="Password">
						</div>
						<div>
							<button type="submit" class="form-control btn btn-primary">회원가입</button>
						</div>
						<a href="join.jsp">회원가입</a>
					</form>
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