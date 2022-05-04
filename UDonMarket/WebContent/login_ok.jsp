<%@page import="com.udon.vo.MemberVo"%>
<%@page import="com.udon.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	//로그인
	MemberVo mvo = new MemberVo();
	int member_id = Integer.parseInt(request.getParameter("member_id"));
	String member_pw;
	
	mvo = DAO.selectMemberWhereMemberId(member_id);
	if(mvo==null) {
		out.print("아이디를 찾을 수 없습니다.");
	} else {
		member_pw = mvo.getMember_pw();
		if(member_pw.equals(request.getParameter("member_pw"))){
			//로그인 성공
			session.setAttribute("member_id", ""+member_id);
			response.sendRedirect("index.jsp");
		} else {
			//로그인 실패 비밀번호가 다릅니다.
			out.print("비밀번호가 다릅니다.");
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>