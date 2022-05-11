--------------------------------------------------------
--  파일이 생성됨 - 수요일-5월-11-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "UDON"."MEMBER" 
   (	"MEMBER_ID" NUMBER(13,0), 
	"MEMBER_PW" VARCHAR2(30 BYTE), 
	"MEMBER_NAME" VARCHAR2(50 BYTE), 
	"REGION_ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "UDON"."POST" 
   (	"P_ID" NUMBER(10,0), 
	"M_ID" NUMBER(13,0), 
	"M_NAME" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(600 BYTE), 
	"PRICE" NUMBER(10,0), 
	"REGION_ID" VARCHAR2(50 BYTE), 
	"REG_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_IMAGE
--------------------------------------------------------

  CREATE TABLE "UDON"."PRODUCT_IMAGE" 
   (	"FILE_NAME" VARCHAR2(100 BYTE), 
	"ORI_NAME" VARCHAR2(100 BYTE), 
	"P_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into UDON.MEMBER
SET DEFINE OFF;
Insert into UDON.MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,REGION_ID) values (1025487326,'emfla1','예명','서울특별시');
Insert into UDON.MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,REGION_ID) values (1029535909,'emfla1','이상윤','서울특별시');
Insert into UDON.MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,REGION_ID) values (1012345678,'emfla1','김광주','광주광역시');
Insert into UDON.MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,REGION_ID) values (1098765432,'emfla1','이경기','경기도');
REM INSERTING into UDON.POST
SET DEFINE OFF;
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (1,1025487326,'예명','1','1',1,'서울특별시',to_date('22/05/10','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (4,1025487326,'예명','레녹스 시계','레녹스 시계입니다
배터리 충전 방식으로 시계잘가요',65000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (5,1025487326,'예명','슈퍼싱글 침대 매트리스(포켓울)','슈퍼싱글 고급 매트리스입니다.(프레임제외)
포켓울 소재라 부드럽고 포근합니다.
가구점에서 60만원에 구매했으며 1년반정도 실사용했습니다.',250000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (6,1025487326,'예명','Cort X500 싸게 팝니다','구매 한지는 3년정도 됐고 최근에 기타 줄 다 갈았습니다! 필요하시다면 미니 앰프도 같이 드리겠습니다 피크,기타 케이스도 다 같이 드리겠습니다',400000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (7,1025487326,'예명','김태균친필싸인 야구방망이','김태균 선수가 직접 싸인 해 준
야구배트 입니다',270000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (8,1025487326,'예명','삼천리 전기자전거','주행거리 소폭 상승 가능 
근거리 위주 이동 
상태괜찮아요 . 
네고불가하며 원하시면 헬멧 드립니다 . ',700000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (9,1025487326,'예명','축구공 풋살볼','새상품입니다 좋은 공입니다',15000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (2,1025487326,'예명','(미개봉) 지브라 무선이어폰 팔아요','미개봉 새제품 입니다 거저에요 사가세요',50000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (3,1025487326,'예명','고급 스텐드형 해먹 가정용 야외용 그물 침대 캠핑 거치대','야외용 가정용 해먹 스탠드 그물 침대 캠핑 거치대.
배송비 포함해서 8만원 넘게 샀고 한 번 썼어요
빨리 처분하고 싶어 저렴하게 올리니 지금 구매하시면 싼 값에 득템하시는 거에요~',60000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (10,1025487326,'예명','lee 라이더스 청자켓팝니다!','리 라이더스 청자켓 L사이즈 팝니다!
하자없고 상태좋아요!',50000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (11,1025487326,'예명','시원한 여름 상의','하늘하늘하게 입기 좋아요~~
배 나와도 티가 안 나서 걱정없이 입을수있어요.
여름 내내 잘 입으실수있을꺼예요',7500,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (12,1025487326,'예명','나이키 에어포스 로우 260','나이키 에어포스로우 2달정도 신던거 팝니다
세탁했습니다',75000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (13,1025487326,'예명','너프건 장난감 스폰지총 (총알 미포함)','스폰지총은 잃어버려서 없어요
총만 판매합니다! 작동 잘 됩니다',9000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (14,1012345678,'김광주','오래된 핸드폰','오래된 핸드폰 수집하시는 분!!
연락 주세요~~
밧데리는 없네요~~',13000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (15,1012345678,'김광주','SQLD 자격검정 실전문제','상품정보
Sql 시험 준비하시는 모든 분들이
다 풀고 간다는 일명 ''노랭이''입니다.
비닐조차 뜯지 않은 새 상품입니다.
연락주세요.
',14000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (16,1012345678,'김광주','M 나이키 스우시 반바지','택배거래 위주로 거래해요~

스펙 말하시면서 맞을까요, 사진 더 보내주세요 이런 질문들 패스합니다',20000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (17,1012345678,'김광주','80s 크리스찬 디올 스포츠 선캡','1980s christian Dior 크리스찬 디올 스포츠 썬바이저 모자 도트 블랙 앤 베이지 입니다. 
저지 코튼에 CD sport 로고가 자수로 수 놓아져 매우 복고적이고 희소성 높은 모자로 고급스럽고 패셔너블한 느낌을 줍니다. ',80000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (18,1012345678,'김광주','아디다스 모자','아디다스 모자입니다
세탁해서 상태 좋아요
완전 블랙은 아니고 아주 짙은 네이비 색상입니다',15000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (19,1012345678,'김광주','엠엘비 블랙 모자 (S-M)','엠엘비 상품이고 매장에 가서 직접 샀습니다. 착용은 샀을 때 빼곤 안 했던 것 같아요. 상태는 매우 깨끗한 상태 입니다. 치수는 57입니다.
',34000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (20,1012345678,'김광주','골프 반팔 상의(100)','가슴단면 50cm
길이 73cm
중고거래상 교환환불 어려우니 양해바랍니다',12000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (21,1012345678,'김광주','봉고르기니 무얼실을라고','번쩍번쩍한 봉고르기니입니다
람보르기니 무르시엘보다 더 멋있는 차
지금 바로 연락주세요!',300000000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (22,1012345678,'김광주','봉고르기니 무얼실을라고','번쩍번쩍한 봉고르기니입니다
람보르기니 무르시엘보다 더 멋있는 차
지금 바로 연락주세요!',300000000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (23,1012345678,'김광주','[미개봉 새제품] 닌텐도 스위치 OLED 화이트 팝니다..','[미개봉 새제품] 닌텐도 스위치 OLED 화이트 팝니다...37만',370000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (24,1012345678,'김광주','PS4 플스 제트 블랙 팔아요','PS4 플스 제트 블랙 팔아요
구성품은 기기본체 및 케이블, 듀얼쇼크4 입니다

상태좋고 하자는 전혀 없습니다 ',160000,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (25,1012345678,'김광주','남아 장난감,피규어 일괄','장난감 나사로 조립하는 공룡장난감 
아이들 소근육 집중력에도좋구 만들기도 쉬워서 
저희딸도 좋아했어요 
머리 다리 날개 등 원하는 각도로 움직일수잇어요',3500,'광주광역시',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (26,1098765432,'이경기','블록 & 장난감','접혔다 펼칠수 있는 색감 블록입니다.
장식장에 디피해놔서 
하자 오염 없어요.',5000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (27,1098765432,'이경기','꼬떼씨엘노트북가방','Cote&ciel
꼬때씨엘 노트북 가방 입니다

구매후 2회정도 사용했습니다

상태 매우 좋습니다

정상가격 20만원때 후반때 였던걸로 기억합니다
',60000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (28,1098765432,'이경기','마우스 손목 받침대(덤 혹은 착불나눔)','마우스 손목 받침대
사용감있습니다
필요하신분은 알아서 찾아오셔야됩니다
연락주세요.',0,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (29,1098765432,'이경기','미개봉 ASUS ROG KERIS WIRELESS 마우스 판매합니다.','ASUS ROG KERIS WIRELESS 마우스 판매합니다.
(수량 2개)
작년 7월달에 구매한 제품이고 중간에 한 번 문제가 있어서 새 것으로 받은 미개봉 제품입니다.
AS는 2년으로 아직 기한 많이 남아있습니다.
2개 모두 구매시 13만 5천원으로 할인해서 드립니다.',70000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (30,1098765432,'이경기','남아 자전거헬멧','구매한지 4년정도 됐습니다.자주사용은 안했지만 사용감 있습니다~',9000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (31,1098765432,'이경기','스테이츠 언디핏 프레임셋','기스 도장까짐 다분하고 gxp bb 나사선 마모로 샵에 가셔서 빼셔야 할 듯 합니당 대구 직거래 하겠습니당!
프레임셋 gxpbb 구성으로 판매 합니다!',190000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (32,1098765432,'이경기','야구글로블+방망이','깨끗합니당',25000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (33,1098765432,'이경기','알톤 하이브리드 자전거','알톤 하이브리드 자전거 20만원에 판매합니다 상태 진짜 좋습니다!',200000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (34,1098765432,'이경기','푸마 퓨처z1.2 mg 270 가격인하','푸마 퓨처z 인조잔디 2회 착용 스터드 돌기 다 살아있습니다. 퓨처 1.1mg스터드보다 스터드가 유연하고 잔뽕이라 우리나라 인조잔디에 찰떡인 제품입니다. 
상태 최상입니다.',120000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (35,1098765432,'이경기','여성 나일론 바람막이 자켓 (네이비)','간절기에 딱인 나일론 자켓입니다! 
심플하고 깔끔해서 막 걸쳐 입어도 예쁘고 
잘 빠진 네이비색이라 어떤 옷과 매치해도 잘어울려요!
한번 입어봣다가 저랑 안어울려서 팔아요!',25000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (36,1098765432,'이경기','오리지날 랄프로렌폴로 더블알엘 RRL 워크 자켓','귀한 더블알엘 캔버스 원단.사용감 존재 전체적 상태 좋은데 우측 포켓 부분 점크기의 오염,좌측 등판 미세오염,카라 접히는 코듀로이 부분 변색 정도 있어요.라지사이즈 실측 어깨55가슴63팔64총장71
',290000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (37,1098765432,'이경기','아디다스 트레이닝 바지','택달린 새상품
사이즈s
문의주세요',95000,'경기도',to_date('22/05/11','RR/MM/DD'));
Insert into UDON.POST (P_ID,M_ID,M_NAME,TITLE,CONTENT,PRICE,REGION_ID,REG_DATE) values (38,1025487326,'예명','르꼬끄 바지 S','한 개당 배송비 미포함 35000원입니당
둘다 별로 안 입어서 상태 좋고 하자 없습니다
사이즈는 둘다 s사이즈이구요',35000,'서울특별시',to_date('22/05/11','RR/MM/DD'));
REM INSERTING into UDON.PRODUCT_IMAGE
SET DEFINE OFF;
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('wallpaperbetter.com_1920x1080 (2)31.jpg','wallpaperbetter.com_1920x1080 (2).jpg',1);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('고급 스텐드형 해먹 가정용 야외용 그물 침대 캠핑 거치대.jpg','고급 스텐드형 해먹 가정용 야외용 그물 침대 캠핑 거치대.jpg',3);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('레녹스시계1.jpg','레녹스시계.jpg',4);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('슈퍼싱글 침대 매트리스(포켓울)1.jpg','슈퍼싱글 침대 매트리스(포켓울).jpg',5);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('Cort X500 싸게 팝니다.jpg','Cort X500 싸게 팝니다.jpg',6);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('김태균친필싸인 야구방망이.jpg','김태균친필싸인 야구방망이.jpg',7);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('미개봉 자브라 무선 이어폰 Jabra Elite 75t.jpg','[미개봉] 자브라 무선 이어폰 Jabra Elite 75t.jpg',2);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('삼천리 전기자전거.jpg','삼천리 전기자전거.jpg',8);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('축구공 풋살볼.jpg','축구공 풋살볼.jpg',9);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('lee 라이더스 청자켓팝니다!.jpg','lee 라이더스 청자켓팝니다!.jpg',10);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('시원한 여름 상의3.jpg','시원한 여름 상의.jpg',11);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('나이키 에어포스 로우 260.jpg','나이키 에어포스 로우 260.jpg',12);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('너프건 장난감 스폰지총 (총알 미포함).jpg','너프건 장난감 스폰지총 (총알 미포함).jpg',13);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('오래된 핸드폰.jpg','오래된 핸드폰.jpg',14);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('SQLD자격검정실전문제1.jpg','SQLD자격검정실전문제1.jpg',15);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('M 나이키 스우시 반바지.jpg','M 나이키 스우시 반바지.jpg',16);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('80s 크리스찬 디올 스포츠 선캡.jpg','80s 크리스찬 디올 스포츠 선캡.jpg',17);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('아디다스 모자.jpg','아디다스 모자.jpg',18);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('엠엘비 블랙 모자 (S-M).jpg','엠엘비 블랙 모자 (S-M).jpg',19);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('골프 반팔 상의(100).jpg','골프 반팔 상의(100).jpg',20);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('1.jpg','1.jpg',22);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('11.jpg','1.jpg',23);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('12.jpg','1.jpg',24);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('남아 장난감,피규어 일괄.jpg','남아 장난감,피규어 일괄.jpg',25);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('블록 장난감.jpg','블록 장난감.jpg',26);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('꼬떼씨엘노트북가방.jpg','꼬떼씨엘노트북가방.jpg',27);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('마우스 손목 받침대(나눔)1.jpg','마우스 손목 받침대(나눔).jpg',28);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('미개봉 ASUS ROG KERIS WIRELESS 마우스 판매합니다..jpg','미개봉 ASUS ROG KERIS WIRELESS 마우스 판매합니다..jpg',29);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('남아 자전거핼멧.jpg','남아 자전거핼멧.jpg',30);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('스테이츠 언디핏 프레임셋.jpg','스테이츠 언디핏 프레임셋.jpg',31);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('야구글로블+방망이.jpg','야구글로블+방망이.jpg',32);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('알톤 하이브리드 자전거.jpg','알톤 하이브리드 자전거.jpg',33);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('푸마 퓨처z1.2 mg 270 가격인하.jpg','푸마 퓨처z1.2 mg 270 가격인하.jpg',34);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('여성 나일론 바람막이 자켓 (네이비).jpg','여성 나일론 바람막이 자켓 (네이비).jpg',35);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('오리지날 랄프로렌폴로 더블알엘 RRL 워크 자켓.jpg','오리지날 랄프로렌폴로 더블알엘 RRL 워크 자켓.jpg',36);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('시엔느 바지 핀턱바지 브라운 s.jpg','시엔느 바지 핀턱바지 브라운 s.jpg',37);
Insert into UDON.PRODUCT_IMAGE (FILE_NAME,ORI_NAME,P_ID) values ('르꼬끄 바지 S.jpg','르꼬끄 바지 S.jpg',38);
--------------------------------------------------------
--  DDL for Index SYS_C007519
--------------------------------------------------------

  CREATE UNIQUE INDEX "UDON"."SYS_C007519" ON "UDON"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007554
--------------------------------------------------------

  CREATE UNIQUE INDEX "UDON"."SYS_C007554" ON "UDON"."POST" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007557
--------------------------------------------------------

  CREATE UNIQUE INDEX "UDON"."SYS_C007557" ON "UDON"."PRODUCT_IMAGE" ("FILE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007519
--------------------------------------------------------

  CREATE UNIQUE INDEX "UDON"."SYS_C007519" ON "UDON"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007554
--------------------------------------------------------

  CREATE UNIQUE INDEX "UDON"."SYS_C007554" ON "UDON"."POST" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007557
--------------------------------------------------------

  CREATE UNIQUE INDEX "UDON"."SYS_C007557" ON "UDON"."PRODUCT_IMAGE" ("FILE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "UDON"."MEMBER" ADD PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UDON"."MEMBER" MODIFY ("REGION_ID" NOT NULL ENABLE);
  ALTER TABLE "UDON"."MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "UDON"."MEMBER" MODIFY ("MEMBER_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "UDON"."POST" ADD PRIMARY KEY ("P_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UDON"."POST" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "UDON"."POST" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "UDON"."POST" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "UDON"."POST" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "UDON"."POST" MODIFY ("M_ID" NOT NULL ENABLE);
  ALTER TABLE "UDON"."POST" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_IMAGE
--------------------------------------------------------

  ALTER TABLE "UDON"."PRODUCT_IMAGE" ADD PRIMARY KEY ("FILE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UDON"."PRODUCT_IMAGE" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "UDON"."PRODUCT_IMAGE" MODIFY ("ORI_NAME" NOT NULL ENABLE);
