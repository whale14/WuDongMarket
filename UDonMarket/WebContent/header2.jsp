<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="./css/common.css" rel="stylesheet" />
<link href="./css/index.css" rel="stylesheet" />

</head>

<body>
<header id="header" >
  <div class="collapse" id="navbarHeader">
    <div class="container">
      <div class="row">
      <!-- 왼쪽 --> 
        <div class="col-sm-8 col-md-7 py-4">
		          <div class="container px-4">
					  <div class="row gx-5">
					  	<h4 class="text-dark">우.동.마.켓</h4>
					  	
					  	<div class="col-12"><a style="color: #f5f1ee">-</a></div>
					  	
					    <div class="col-4">
					     	<p class="text-muted">
		          				<select class="form-select"
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
							</p>
					    </div>
					    <div class="col-8">
					      	<div class="search-area">
								<form action="search.jsp?keyword=**">
									<input type="text" class="form-control" name="keyword" placeholder="search..">
								</form>
							</div>
					    </div>
					    
					     <p class="text-muted">여기까지 ----------- </p>
					     
					  </div>
				</div>
        </div>
<!-- 오른쪽 -->        
        <div class="col-sm-4 offset-md-1 py-4">
        	
        	<div class="container px-4">
			  <div class="row gx-5">
			  
			  	<h4 class="text-dark">회원 관리</h4>
			  	<div class="col-12"><a style="color: #f5f1ee">-</a></div>
				    <div class="col">
				     	<ul class="list-unstyled">
				            <li><div class="header-top-right">
								<c:if test="${member_id==null }">
									<li><a href="login.jsp">로그인</a></li>
									<li><a href="join.jsp">회원가입</a></li>
								</c:if>
								<c:if test="${member_id!=null }">
									<li><a class="m-auto" href="registration.jsp">판매등록</a></li>
									<li><a href="logout.jsp">로그아웃</a></li>
								</c:if>
				
							</div></li>
				          </ul>
				    </div>
			    
			  </div>
			</div>
          
        </div>
      </div>
    </div>
 </div>
 
  <div class="navbar navbar-light shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <img src="./img/logo.png" title="로고"style="float: left; width: 50px; height: 40px;"/>
        <strong style="padding-right: 30px;">우동마켓</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>




<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		
