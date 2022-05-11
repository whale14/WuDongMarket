<%@page import="java.io.File"%>
<%@page import="com.udon.vo.ProductImageVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.udon.vo.PostVo"%>
<%@page import="java.util.List"%>
<%@page import="com.udon.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
List<PostVo> posts = DAO.getPostList(Integer.parseInt(request.getParameter("member_id")));
List<ProductImageVo> imgs = new ArrayList<>();

for (PostVo vo : posts) {
	imgs.add(DAO.getImg(vo.getP_id()));
}

for (ProductImageVo vo : imgs) {
	String path = "C:/Users/whale/IdeaProjects/WuDongMarket/UDonMarket/WebContent/uploadedFiles/";
	File deleteFile = new File(path + vo.getFile_name());
	if (deleteFile.exists()) {

		// 파일을 삭제합니다.
		deleteFile.delete();

		System.out.println("파일을 삭제하였습니다.");

	} else {
		System.out.println("파일이 존재하지 않습니다.");
	}
	
	DAO.deleteImg(vo.getP_id());
}

DAO.deletePosts(Integer.parseInt(request.getParameter("member_id")));
DAO.deleteMember(Integer.parseInt(request.getParameter("member_id")));

session.invalidate();
out.println("삭제완료");
out.println("<a href=\"index.jsp\">메인으로</a>");
%>
