<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<header id="header">
	<div class="container">
		<div class="d-flex justify-content-between">
			<div style="display: inline-block;">
				<img src="./img/logo.png" title="로고"
					style="float: left; width: 125px; height: 100px;" /> <a
					href="index.jsp">우동마켓</a>
			</div>
			<div class="header-top-right">
				<c:if test="${member_id==null }">
					<a href="login.jsp">로그인</a>
					
				</c:if>
				<c:if test="${member_id!=null }">
					<a class="m-auto" href="registration.jsp">판매등록</a>
					<a href="logout.jsp">로그아웃</a>
				</c:if>

			</div>
		</div>
		<div class="search-area">
				<form action="search.jsp?keyword=**">
					<input type="text" class="form-control" name="keyword"
						placeholder="search..">
				</form>
			</div>
		
	</div>
</header>