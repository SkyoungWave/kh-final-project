# kh-final-project

# CCC 

![image]()

<br>
CARROT LINE 항공 사이트
<br><br>
항공 사이트 <br>
사용자에게 항공 티켓 예매 및 사전 예약 서비스를 제공하는 사이트입니다.
<hr>

- 개발 목표 :항공 티켓 예매 및 사전 예약 서비스 구축

- 수행 기간 : 2022년 12월 5일 ~ 2023년 1월 12일 (약 6주)

- 개발 인원 : 6명

- 기여도 : 20%

- 팀 전체 구현 기능 :<br>

  + 로그인, 회원가입
  + 관리자페이지.
  + <b>금일 매출, 금주 매출 조회, 금년 월별 매출 char js 그래프 시각화</b>
  + <b>금일 예약율, 운항 일정 항공편 조회</b>
  + <b>공지사항(CRUD) 및 회원 조회</b>
  + 항공 사전 예약 시스템.
  + <b>동아시아 국가 주요 도시 운항 일정 항공편 조회</b>
  + <b>항공 좌석 사전 예약, 사전 위탁수하물 예약, 기내식, 여행자보험 가입</b>
  + <b>결제 및 결제사항 조회, 인쇄</b>
  + <b>마이페이지</b>

- 개발 환경 :<br>

  + OS : Window 10
  + Development Tool : STS3, Visual Studio Code
  + DBMS : Oracle DB-SQLDeveloper
  + Server : Apache Tomcat v8.5
  + Framework : Spring Framework 5.3.24, Mybatis 3
  + Management and comprehension Tool : Maven 3.8.6
  + Language : Java 1.8, JavaScript5, HTML5, CSS3
  + Application Tool : JSP 3.2
  + Design Tool : BootStrap 4.3.1
  + Library : jQuery 3.4.1
  + Team Collaboration Tool : Github

- ER Diagram :<br>

![CCC_FINAL_ERD]()
<br>
<hr>
<br>

# 담당 기능 설명 :

- 관리자 페이지 : 관리자가 손쉽게 여러 페이지에 접근할 수 있도록 항공사 필요 기능들을 한 곳에 모았습니다.

    + 관리자만 관리자 페이지에 접근할 수 있도록 main 페이지 구현.<br>
    + 금주, 금일, 금년도 매출 조회 및 chart js를 통한 시각화.<br>
    + 금일 운항 항공편 조회 및 회원 조회.<br>
    + 공지사항 관리(CRUD) 기능.<br>

<div align="center">
</div>
  
- 항공 예약(좌석, 위탁수하물, 기내식, 여행자보험) 페이지 :

    + 예약자 사전 등록정보가 Cookie 리스트에 저장되고, 그 Cookie에서 사용자 정보를 뽑아서 탑승자 슬라이드에 시각화 <br>
    + 탑승예약자가 원하는 좌석, 위탁수하물, 기내식, 여행자보험을 선택시 슬라이드바에 정보 표시 및 Ajax로 동시에 Cookie에 저장.<br>
    + 클릭 이벤트와 체인지이벤트를 통해 탑승예약자가 기능을 선택 및 변경 시 동시에 Ajax로 Controller단에 전송.<br>
    + 마찬가지로 전송과 시각적인 재미를 더해주는 css 변화.<br>
    + 탑승 예약자가 선택한 옵션의 총액을 직관적으로 볼 수 있도록 슬라이더바 처리.<br>
    + 탑승 예약자가 다음 버튼을 클릭하였을 시 Ajax로 Controller단에 전송된 정보들이 Cookie에 차곡차곡 저장될 수 있도록 처리.<br>
    + Cookie 저장 시 다량의 정보를 리스트 형태로 보존할 수 있도록 Cookie vo 와 ArrayList를 활용.

<div align="center">
  
</div>

<br><hr>

# 읽어주셔서 감사합니다.

