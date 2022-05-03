<%@page import="com.udon.dao.DAO"%>
<%@page import="com.udon.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	int id = Integer.parseInt(request.getParameter("member_id"));
	String pw = request.getParameter("member_pw");
	String name = request.getParameter("member_name");
	String region = request.getParameter("region_id");
	MemberVo mvo = new MemberVo(id, pw, name, region );
	DAO.insertMember(mvo);
%>