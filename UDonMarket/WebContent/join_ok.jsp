<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8");
	int member_id = Integer.parseInt(request.getParameter("member_id"));
	
	DAO.selectMemberWhereMemberId(member_id);
	String member_pw = request.getParameter("member_pw");
	String member_name = request.getParameter("member_name");
	String region_id = request.getParameter("region_id");
	
	MemberVo mvo = new MemberVo(member_id, member_pw, member_name, region_id );
	int result = DAO.insertMember(mvo);
	
	pageContext.setAttribute("result", result);
	pageContext.setAttribute("mvo", mvo);
%>
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

</head>

<body>
	<c:if test="${result==1}">
		<h2>가입완료!</h2>
		<a href="login.jsp">로그인하러가기</a>
	</c:if>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>

</html>