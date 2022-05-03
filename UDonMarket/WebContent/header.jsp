<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<header id="header">
<div class="container">
	<div class="header-top">
		<div style="display:inline-block;">
			<img src="./img/logo.png" title="로고" style="float:left; width:125px; height:100px;"/>
			<a href="index.jsp">우동마켓</a>
		</div>
		<div class="header-top-right">
			<a href="login.jsp">로그인</a>
			
		</div>
	</div>
	<div class="search-area">
		<form action="search.jsp?keyword=**">
			<input type="text" name="keyword" placeholder="search..">
			<img alt="검색" src="./img/search.png">
		</form>
	</div>
</div>
</header>