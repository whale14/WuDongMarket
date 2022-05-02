<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <title></title>

     <link href="./css/default.css" rel="stylesheet" />
</head>
 <body>

     <div class="Title">
        UDonMarket
     </div>

     <div class="imsi-sub-frame">

		<div style="  padding-top: 50px;  margin-left: 31%;">
			<p class="imsi-title">회원정보 수정</p>
		</div>

         <div class="imsi-left">
             
             <div class="kkk">
                 <p class="imsi-category">· <span class="point">아이디</span></p>
                 <p class="imsi-text">_ </p>
                 <p class="imsi-category">· <span class="point">비밀번호</span></p>
                 <p class="imsi-text">_ </p>
                 <p class="imsi-category">· <span class="point">지역</span></p>
                 <p class="imsi-text">_ </p>
                 <p class="imsi-category">· <span class="point">닉네임</span></p>
                 <p class="imsi-text">_ </p>
                  
             </div>
         </div>
			<div class="imsi-right" style="margin-top: 60px; ">
				
				<a href="#"><div class="imsi-button" onclick="ID_click('s');"> 아이디 수정 </div></a>
                <script>
                    function ID_click(s) {
                        var id = prompt("아이디를 수정해 주세요");
                        alert("수정 완료 : -" + id + "-");
                    }
                </script>
               
				<a href="#"><div class="imsi-button" onclick="PW_click('s');"> 비밀번호 수정 </div></a>
				<script>
                    function PW_click(s) {
                        var pw = prompt("비밀번호를 수정해 주세요");
                        alert("수정 완료 : -" + pw + "-");
                    }
                </script>
                <a href="#"><div class="imsi-button" onclick="Area_click('s');"> 지역 수정</div></a>
				<script>
                    function Area_click(s) {
                        
                        var Area = prompt(" 지역을 수정해 주세요. \n \n 충청도, 제주도, 전라도, 인천광역시, 울산광역시, 서울특별시 \n 부산광역시, 대전광역시, 광주광역시, 경상도, 경기도, 강원도");
                        alert("수정 완료 : -" + Area + "-");
                    }
                </script>
                <a href="#"><div class="imsi-button" onclick="NK_click('s');"> 닉네임 수정</div></a>
                <script>
                    function NK_click(s) {
                        var nk = prompt("닉네임을 수정해 주세요");
                        alert("수정 완료 : -" + nk + "-");
                    }
                </script>
			</div>
    	</div>



</body>
</html>