<%@page import="com.udon.vo.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.udon.vo.ProductImageVo"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.udon.common.Paging"%>
<%@page import="com.udon.vo.PostVo"%>
<%@page import="java.util.List"%>
<%@page import="com.udon.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
String member_id = (String) session.getAttribute("member_id");
List<PostVo> posts;
List<ProductImageVo> imgs;
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
<link href="./css/index.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main style="margin-bottom: 100px;">
		<div class="container shadow rounded-3 mt-4 mb-4 bg-light">
			<c:if test="${member_id==null }">
				<%
					Paging p = new Paging();
				System.out.println("검색검색:" + DAO.getSearchCount(request.getParameter("keyword")));
				p.setTotalRecord(DAO.getSearchCount(request.getParameter("keyword")));
				int row;
				if (DAO.getTotalCount() <= 3)
					row = 1;
				else if (DAO.getTotalCount() > 3 && DAO.getTotalCount() <= 6)
					row = 2;
				else if (DAO.getTotalCount() > 6 && DAO.getTotalCount() <= 9)
					row = 2;
				else
					row = 4;
				pageContext.setAttribute("row", row);

				p.setTotalPage();
				System.out.println("> 전체 게시글 수 : " + p.getTotalRecord());
				System.out.println("> 전체 페이지 수 : " + p.getTotalPage());

				String cPage = request.getParameter("cPage");
				if (cPage != null) {
					p.setNowPage(Integer.parseInt(cPage));
				}
				System.out.println("> cPage : " + cPage);
				System.out.println("> paging nowPage : " + p.getNowPage());

				p.setEnd(p.getNowPage() * p.getNumPerPage());
				p.setBegin(p.getEnd() - p.getNumPerPage() + 1);

				if (p.getEnd() > p.getTotalRecord()) {
					p.setEnd(p.getTotalRecord());
				}
				System.out.println(">> 시작번호(begin) : " + p.getBegin());
				System.out.println(">> 끝번호(end) : " + p.getEnd());

				int nowPage = p.getNowPage();
				int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
				p.setBeginPage(beginPage);
				p.setEndPage(beginPage + p.getPagePerBlock() - 1);

				if (p.getEndPage() > p.getTotalPage()) {
					p.setEndPage(p.getTotalPage());
				}

				System.out.println(">> beginPage : " + p.getBeginPage());
				System.out.println(">> endPage : " + p.getEndPage());

				pageContext.setAttribute("p", p);
				%>
				<%
					posts = DAO.getSearchList(p.getBegin(), p.getEnd(), request.getParameter("keyword"));
				System.out.println(">> 현재페이지 글목록(list) : " + posts.toString());

				pageContext.setAttribute("posts", posts);

				imgs = new ArrayList<>();
				for (PostVo pvo : posts) {
					System.out.print(pvo.getP_id());
					imgs.add(DAO.getImg(pvo.getP_id()));
				}

				pageContext.setAttribute("imgs", imgs);
				pageContext.setAttribute("keyword", request.getParameter("keyword"));
				%>
				<div class="row mt-4">
					<div class="col-4">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top" alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">등록일</small>
								</p>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top" alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">등록일</small>
								</p>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top" alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">등록일</small>
								</p>
							</div>
						</div>
					</div>
					<c:forEach var="vo" items="${posts }" varStatus="status">
						<div class="col-4">
							<a href="detailpage.jsp?p_id=${vo.p_id }">
								<div class="card mb-3 border-0">
									<div class="card-photo">
										<c:url
											value="../../../../../../temp/${imgs[status.index].file_name }"
											var="data" />
										<img src="${data }" class="card-img-top" alt="...">
									</div>
									<div class="card-body d-flex justify-content-between">
										<h5 class="card-title w-50 text-start bold">${vo.title }</h5>
										<p class="card-text">${vo.price }</p>
										<p class="card-text">
											<small class="text-muted">${vo.reg_date }</small>
										</p>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</c:if>
			<c:if test="${member_id!=null }">
				내지역 중고물건 검색
				<div class="row mt-4">
					<%
						Paging p = new Paging();
					MemberVo mvo = DAO.selectMemberWhereMemberId(Integer.parseInt(member_id));
					p.setTotalRecord(DAO.getRegionSearchCount(request.getParameter("keyword"), mvo.getRegion_id()));
					p.setTotalPage();
					System.out.println("> 전체 게시글 수 : " + p.getTotalRecord());
					System.out.println("> 전체 페이지 수 : " + p.getTotalPage());

					String cPage = request.getParameter("cPage");
					if (cPage != null) {
						p.setNowPage(Integer.parseInt(cPage));
					}
					System.out.println("> cPage : " + cPage);
					System.out.println("> paging nowPage : " + p.getNowPage());

					p.setEnd(p.getNowPage() * p.getNumPerPage());
					p.setBegin(p.getEnd() - p.getNumPerPage() + 1);

					if (p.getEnd() > p.getTotalRecord()) {
						p.setEnd(p.getTotalRecord());
					}
					System.out.println(">> 시작번호(begin) : " + p.getBegin());
					System.out.println(">> 끝번호(end) : " + p.getEnd());

					int nowPage = p.getNowPage();
					int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
					p.setBeginPage(beginPage);
					p.setEndPage(beginPage + p.getPagePerBlock() - 1);

					if (p.getEndPage() > p.getTotalPage()) {
						p.setEndPage(p.getTotalPage());
					}

					System.out.println(">> beginPage : " + p.getBeginPage());
					System.out.println(">> endPage : " + p.getEndPage());

					pageContext.setAttribute("p", p);
					%>
					<%
						posts = DAO.getRegionSearchList(p.getBegin(), p.getEnd(), request.getParameter("keyword"), mvo.getRegion_id());
					System.out.println(">> 현재페이지 글목록(list) : " + posts.toString());

					pageContext.setAttribute("posts", posts);

					imgs = new ArrayList<>();
					for (PostVo pvo : posts) {
						System.out.print(pvo.getP_id());
						imgs.add(DAO.getImg(pvo.getP_id()));
					}

					pageContext.setAttribute("imgs", imgs);
					pageContext.setAttribute("keyword", request.getParameter("keyword"));
					%>
					<div class="col-4">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top" alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">등록일</small>
								</p>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top" alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">등록일</small>
								</p>
							</div>
						</div>
					</div>
					<div class="col-4">
						<div class="card mb-3 border-0">
							<div class="card-photo">
								<img src="./img/예시이미지.jpg" class="card-img-top" alt="...">
							</div>
							<div class="card-body d-flex justify-content-between">
								<h5 class="card-title w-50 text-start bold">제목</h5>
								<p class="card-text">가격</p>
								<p class="card-text">
									<small class="text-muted">등록일</small>
								</p>
							</div>
						</div>
					</div>
					<c:forEach var="vo" items="${posts }" varStatus="status">
						<div class="col-4">
							<a href="detailpage.jsp?p_id=${vo.p_id }">
								<div class="card mb-3 border-0">
									<div class="card-photo">
										<c:url
											value="../../../../../../temp/${imgs[status.index].file_name }"
											var="data" />
										<img src="${data }" class="card-img-top" alt="...">
									</div>
									<div class="card-body d-flex justify-content-between">
										<h5 class="card-title w-50 text-start bold">${vo.title }</h5>
										<p class="card-text">${vo.price }</p>
										<p class="card-text">
											<small class="text-muted">${vo.reg_date }</small>
										</p>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</c:if>
			<nav aria-label="Main list pages">
				<ul class="pagination pagination-lg justify-content-center">
					<c:if test="${p.beginPage == 1 }">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1" aria-disabled="true">이전</a></li>
					</c:if>
					<c:if test="${p.beginPage != 1 }">
						<li class="page-item "><a class="page-link"
							href="index.jsp?cPage=${p.beginPage - 1 }">이전</a></li>
					</c:if>

					<c:forEach var="pageNo" begin="${p.beginPage }" end="${p.endPage }">
						<c:if test="${pageNo == p.nowPage}">
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
						</c:if>
						<c:if test="${pageNo != p.nowPage}">
							<li class="page-item"><a class="page-link"
								href="index.jsp?cPage=${pageNo }">${pageNo }</a></li>
						</c:if>

					</c:forEach>

					<c:if test="${p.endPage < p.totalPage }">
						<li class="page-item "><a class="page-link"
							href="index.jsp?cPage=${p.beginPage + 1 }">다음</a></li>
					</c:if>
					<c:if test="${p.endPage >= p.totalPage }">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1" aria-disabled="true">다음</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
<footer> </footer>
</html>