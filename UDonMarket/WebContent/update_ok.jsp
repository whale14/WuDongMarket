<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");

int member_id = Integer.parseInt(request.getParameter("member_id"));
String member_pw = request.getParameter("member_pw");
String member_name = request.getParameter("member_name");
String region_id = request.getParameter("region_id");

MemberVo upMvo = new MemberVo(member_id, member_pw, member_name, region_id);
DAO.updateMember(upMvo, Integer.parseInt((String)session.getAttribute("member_id")) );
session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>수정완료!</h2>
	<p>수정후 로그아웃 되었습니다. 다시 로그인해주세요</p>
	<a href="login.jsp">로그인 하러가기</a>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>