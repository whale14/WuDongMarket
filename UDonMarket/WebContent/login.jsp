<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

 <head>
    <meta charset="UTF-8">
     <title></title>

     <link href="./css/main_.css" rel="stylesheet" />

</head>  

 <body>

    <div id="con">
        <div id="login">
        <div id="login_form"><!--로그인 폼-->
        <form method="post" action="loginAction.jsp">
            <h3 class="login" style="letter-spacing:-1px;">Login</h3>
    
            
    
            <hr>
            <label>
            <!-- <span>ID</span> -->
            <p style="text-align: left; font-size:12px; color:#666">phone_number</p>
            <input type="text" placeholder="숫자만 입력해 주세요" class="size" name="member_ID">
            <!-- <input type="submit" value="확인"> -->
            <p></p>
            </label>
    
            <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">Password </p>
            <input type="text" placeholder="비밀번호를 입력" class="size" name="member_PW">
            <!-- <input type="submit" value="확인"> -->
            </label>
    
            <p>
                <input type="submit" value="로그인" class="btn">
            </p>
        </form>
        <hr>
        <p class="find">
            <span><a href="#">아이디 찾기</a></span>
            <span><a href="#">비밀번호 찾기</a></span>
            <span><a href="join.jsp" >회원가입</a></span>
        </p>
        </div>
        <div>
        </div><!--con-->
    



</body>

</html>