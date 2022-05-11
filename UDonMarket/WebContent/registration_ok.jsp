<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.ProductImageVo"%>
<%@page import="com.udon.vo.PostVo"%>
<%@page import="com.udon.vo.MemberVo"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.sun.xml.internal.ws.policy.jaxws.DefaultPolicyResolver"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String member_id = (String) session.getAttribute("member_id");
	System.out.print(member_id);
	
	ServletContext context = getServletContext();
	String path = "C:/Users/whale/IdeaProjects/WuDongMarket/UDonMarket/WebContent/uploadedFiles";
	
	MultipartRequest mr = new MultipartRequest(request, path, (10*1024*1024), "UTF-8", new DefaultFileRenamePolicy());
	
	MemberVo mvo = DAO.selectMemberWhereMemberId(Integer.parseInt(member_id));
	
	PostVo pvo = new PostVo();
	pvo.setM_id(mvo.getMember_id());
	pvo.setM_name(mvo.getMember_name());
	pvo.setTitle(mr.getParameter("title"));
	pvo.setContent(mr.getParameter("content"));
	pvo.setPrice(Integer.parseInt(mr.getParameter("price")));
	pvo.setRegion_id(mvo.getRegion_id());
	DAO.insertPost(pvo);
	
	ProductImageVo ivo = new ProductImageVo();
	ivo.setFile_name(mr.getFilesystemName("file_name"));
	ivo.setOri_name(mr.getOriginalFileName("file_name"));
	
	ivo.setP_id(DAO.selectMaxPidFromPost(mvo.getMember_id())); 
	
	DAO.insertProductImage(ivo);
	out.println("등록완료");
	out.println("<a href=\"index.jsp\">메인으로</a>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
파일업로드
</body>
</html>