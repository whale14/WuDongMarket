<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

 <head>

    <meta charset="UTF-8">
     <title></title>
<style>
@import url('https://fonts.googleapis.com/css2?family=The+Nautigal:wght@700&display=swap');
@import url('http://fonts.googleapis.com/earlyaccess/notosanskr.css');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');


.imsi-title {

    color: #003c8a;
    font-weight: 500;
    font-size: 60px;
    
    font-family: 'Noto Sans KR', sans-serif;
}

.imsi-category {
    text-align: left;
    font-weight: 500;
    font-size: 1.2em;
    letter-spacing: -0.1em;
    margin: 0;
    margin-top: 10px;
}

.imsi-text {
    text-align: left;
    font-weight: 300;
    font-size: 1.7em;
    letter-spacing: -0.1em;
    margin-top: 0;
}

.point {
    color: #003c8a;
    font-weight: 900;
    font-size: 25px;
}

body {
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed;
    margin: 0;
    padding: 0;


}



.imsi-sub-frame{
    position: relative;
    width: 850px;
    height: 650px;
    background-color: rgba(255,255,255,0.7);
    border-radius: 10px;

    margin: auto;
    margin-top: 100px;
    
}

.imsi-left {
    position: absolute;
    left: 0;
    width: 550px;
    height: 350px;
    border-right: 1px solid rgb(255, 255, 255, 0.7);
    text-align: center;
    margin-top: 43px;
    

}

.kkk {
   
    width: 350px;
    margin: 0 auto;
}



.imsi-right {
    position: absolute;
    right: 0;
    width: 300px;
    height: 740px;
    text-align: center;
    
}

.imsi-button {
    margin: 10px auto;
    color: white;
    border: 1px solid #003c8a;
    background-color: #003c8a;
    text-align: center;
    padding-bottom: 15px;
    padding-top: 10px;
    width: 170px;
    transition: 0.2s;
    border-radius: 10px;
    margin-bottom: 42px;
}



.imsi-button:hover {
    border: 1px solid #0a1b7a;
    background-color: #0a1b7a;
}
</style>
     

 </head>  

 <body>

     <jsp:include page="/header.jsp"></jsp:include>

     <div class="imsi-sub-frame">

		<div style="  padding-top: 50px;  margin-left: 37%;">
			<p class="imsi-title">회원정보</p>
		</div>

         <div class="imsi-left">
             
             <div class="kkk">
                 <p class="imsi-category">· <span class="point">아이디</span></p>
                 <p class="imsi-text">_ 010 8000 3983</p>
                 <p class="imsi-category">· <span class="point">비밀번호</span></p>
                 <p class="imsi-text">_ qwer3543</p>
                 <p class="imsi-category">· <span class="point">지역</span></p>
                 <p class="imsi-text">_ 경기도</p>
                 <p class="imsi-category">· <span class="point">신뢰도</span></p>
                 <p class="imsi-text">_ 78점</p>
                 
             </div>
         </div>
         
         
			<div class="imsi-right" style="margin-top: 60px; ">
				
				<a href="#"><div class="imsi-button"> 판매내역 </div></a>
				<a href="#"><div class="imsi-button"> 채팅내역 </div></a>
				<a href="#"><div class="imsi-button"> 구매내역</div></a>
				<a href="userChange.jsp"><div class="imsi-button"> 회원정보 수정</div></a>

			</div>
    	</div>
    	
    	<br><br><br><br><br><br>

<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>