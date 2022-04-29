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
        <form>
            <h3 class="login" style="letter-spacing:-1px;">join</h3>
    
           
    
            <hr>
    
            <!-- <span>ID</span> -->
            <p style="text-align: left; font-size:12px; color:#666">username</p>
            <input type="text" placeholder="아이디" class="size">
            <p></p>
            </label><!--아이디-->
    
            <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">Password </p>
            <input type="password" placeholder="비밀번호" class="size">
            </label><!--비밀번호-->
    
            <label>
                <!-- <span>PW</span> -->
                <p style="text-align: left; font-size:12px; color:#666">닉네임</p>
                <input type="Nickname" placeholder="닉네임" class="size">
            </label><!--비밀번호 확인-->
    
            <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">지역 / 전화번호</p>
                <select class="size num1">
                    <option value="1" selected>충청도</option>
                    <option value="2" selected>제주도</option>
                    <option value="3" selected>전라도</option>
                    <option value="4" selected>인천광역시</option>
                    <option value="5" selected>울산광역시</option>
                    <option value="6" selected>서울특별시</option>
                    <option value="7" selected>부산광역시</option>
                    <option value="8" selected>대전광역시</option>
                    <option value="9" selected>광주광역시</option>
                    <option value="10" selected>경상도</option>
                    <option value="11" selected>경기도</option>
                    <option value="12" selected>강원도</option>
                </select>
                <input placeholder="숫자만 입력"  class="size num2" required>
             </label> <!--전화번호-->
    
    
    
    
    
        <br>
            <p>
                <input type="submit" value="회원가입" class="btn">
                
            </p>
        </form>
    
        <hr>
        <p class="find">
            <span><a href="loin.jsp" >로그인 페이지로 이동</a></span>
        </p>
        </div>
        <div>
        </div><!--con-->
    
    
    
    



</body>

</html>