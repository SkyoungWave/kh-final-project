<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/eco_seat.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/eco_seat.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/eco_meal.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/eco_insurance.css">
    
	<!--소이언니가 준 script-->
	<script src='https://kit.fontawesome.com/77ad8525ff.js' crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/bookingHeader.css">
	<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/waitMe.css">

			
<style>
input:checked + label#seat-check{
    background-image: url("<%=request.getContextPath()%>/resources/images/check.png");
}
</style>

</head>
<body>

    <div class="header booking">
        <div class="header_inner">
            <!-- Logo -->
            <a href="/app/main">
                <h1 class="top_logo">캐럿 라인</h1>
            </a>
            <!--//  Logo -->

            

            <!-- Header Menu -->
            <div class="util_wrap">
                
                <!-- 유틸 메뉴 -->
                <div class="util_menu">
                    <!-- 로그인 on / off 클래스 변경 -->
                    <!-- date-id layer_main1 / layer_main2 변경 -->
                    <a class="btn_login on" href="javascript:logoutLayer();">로그인 상태 상세보기</a>
                    <a class="btn_search" href="#none">검색</a>
                    <a class="btn_allmenu" href="#none">전체메뉴</a>
                    <!--// 로그인 전 -->
                </div>
                <!-- 유틸 메뉴 -->
            </div>
            <!--// Header Menu -->
        </div>
    </div>
    
    
    <section class="seat-outer">
        
        <!-- Title & Step -->
        <div class="tit_booking_wrap">
            <h2 class="pg_tit">항공권예매</h2>
            <div class="step_booking"> 
                <ul class="bs4-order-tracking"> 
                    <li class="step">
                         <div><i class="fas fa-check"></i></div> 1.여정검색 
                    </li>
                    <li class="step "> 
                        <div><i class="fas fa-check"></i></div> 2.탑승자 정보 입력 
                    </li> 
                    <li class="step active"> 
                        <div><i class="fas fa-check"></i></div> 3.부가서비스 
                    </li>
                    <li class="step "> 
                        <div><i class="fas fa-check"></i></div> 4.선택내역 확인 및 규정동의 
                    </li>
                    <li class="step "> 
                        <div><i class="fas fa-check"></i></div> 5.결제 
                    </li> 
                    <li class="step "> 
                        <div><i class="fas fa-check"></i></div> 6.예약완료 
                    </li>  			 
                </ul> 
            </div>
            
        </div>
        <!-- Title & Step -->





        <div class="sel_service_section">
            <!-- 구간선택 -->
            <div class="service_section_wrap service_section_wrap--simple">
                <!-- 구간선택 슬라이드 -->
                <div class="service_section_slide swiper-container swiper-container-horizontal">
                    <ul class="swiper-wrapper" id="routeSlider" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
                        <li class="swiper-slide swiper-slide-duplicate swiper-slide-active" id="route_1" data-swiper-slide-index="0">
                                <!-- 구간선택 박스 -->
                                <div class="service_section_box">
                                    <!-- 구간 -->
                                    <span class="bul_section">구간1</span>
                                    <!--// 구간 -->
                                    <!-- 출발 -->
                                    <div class="service_name first">
                                        <strong class="tit airport departure">ICN</strong>
                                        <span class="addition">서울/인천</span>
                                    </div>
                                    <!-- 출발 -->
                                    <!-- 설명 -->
                                    <div class="service_exp route_plain_info">
                                        <p class="top fltNumber">TW175</p>
                                        <p class="bttm departureDate">2023-03-21(화)</p>
                                    </div>
                                    <!--// 설명 -->
                                    <!-- 도착 -->
                                    <div class="service_name last">
                                        <strong class="tit airport arrival">CEB</strong>
                                        <span class="addition">세부</span>
                                    </div>
                                    <!-- 도착 -->
                                </div>
                                <!--// 구간선택 박스 -->
                        </li>
                        <li class="swiper-slide swiper-slide-duplicate swiper-slide-next" id="route_2" data-swiper-slide-index="1">
                                <!-- 구간선택 박스 -->
                                <div class="service_section_box">
                                    <!-- 구간 -->
                                    <span class="bul_section">구간2</span>
                                    <!--// 구간 -->
                                    <!-- 출발 -->
                                    <div class="service_name first">
                                        <strong class="tit airport departure">CEB</strong>
                                        <span class="addition">세부</span>
                                    </div>
                                    <!-- 출발 -->
                                    <!-- 설명 -->
                                    <div class="service_exp route_plain_info">
                                        <p class="top fltNumber">TW176</p>
                                        <p class="bttm departureDate">2023-03-23(목)</p>
                                    </div>
                                    <!--// 설명 -->
                                    <!-- 도착 -->
                                    <div class="service_name last">
                                        <strong class="tit airport arrival">ICN</strong>
                                        <span class="addition">서울/인천</span>
                                    </div>
                                    <!-- 도착 -->
                                </div>
                                <!--// 구간선택 박스 -->
                        </li>
                    </ul>

                    <!-- <div class="swiper-pagination"></div> -->
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                <!--// 구간선택 슬라이드 -->

                <!-- 여정 재검색 -->
                <div class="btn_refresh">
                    <button class="btn_small refresh red">여정 재검색</button>
                </div>
                <!--// 여정 재검색 -->

                <!-- 슬라이드 버튼 -->
                <a class="btn_slide_prev" href="#none" tabindex="0" role="button" aria-label="Previous slide">이전</a>
                <a class="btn_slide_next" href="#none" tabindex="0" role="button" aria-label="Next slide">다음</a>
                <!--// 슬라이드 버튼 -->

                <!-- 구간 더보기 -->
                <div class="swiper-pagination-wrapper">
                    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
                        <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                        <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                    </div>
                    <a class="btn_section_more" href="#none">더보기</a>
                </div>
                <!--// 구간 더보기 -->

                <!-- 구간 더보기 Layer -->
                <div class="layer_section_list">
                    <ul>
                        <!-- loop -->
                        
                            <li style="cursor: pointer;" id="box_route_1">
                                <a href="#" onclick="routeSlider.slideTo(0,400,false); $(this).parents('div.layer_section_list').find('a.btn_close').click();">
                                    <!-- 구간선택 박스 -->
                                    <div class="service_section_box">
                                        <!-- 구간 -->
                                        <span class="bul_section">구간1</span>
                                        <!--// 구간 -->

                                        <!-- 출발 -->
                                        <div class="service_name first">
                                            <strong class="tit airport departure">ICN</strong>
                                            <span class="addition">서울/인천</span>
                                        </div>
                                        <!-- 출발 -->

                                        <!-- 설명 -->
                                        <div class="service_exp route_plain_info">
                                            <p class="top fltNumber">TW175</p>
                                            <p class="bttm departureDate">2023-03-21(화)</p>
                                        </div>
                                        <!--// 설명 -->

                                        <!-- 도착 -->
                                        <div class="service_name last">
                                            <strong class="tit airport arrival">CEB</strong>
                                            <span class="addition">세부</span>
                                        </div>
                                        <!-- 도착 -->
                                    </div>
                                    <!--// 구간선택 박스 -->
                                </a>
                            </li>
                        
                        
                            <li style="cursor: pointer;" id="box_route_2">
                                <a href="#" onclick="routeSlider.slideTo(1,400,false); $(this).parents('div.layer_section_list').find('a.btn_close').click();">
                                    <!-- 구간선택 박스 -->
                                    <div class="service_section_box">
                                        <!-- 구간 -->
                                        <span class="bul_section">구간2</span>
                                        <!--// 구간 -->

                                        <!-- 출발 -->
                                        <div class="service_name first">
                                            <strong class="tit airport departure">CEB</strong>
                                            <span class="addition">세부</span>
                                        </div>
                                        <!-- 출발 -->

                                        <!-- 설명 -->
                                        <div class="service_exp route_plain_info">
                                            <p class="top fltNumber">TW176</p>
                                            <p class="bttm departureDate">2023-03-23(목)</p>
                                        </div>
                                        <!--// 설명 -->

                                        <!-- 도착 -->
                                        <div class="service_name last">
                                            <strong class="tit airport arrival">ICN</strong>
                                            <span class="addition">서울/인천</span>
                                        </div>
                                        <!-- 도착 -->
                                    </div>
                                    <!--// 구간선택 박스 -->
                                </a>
                            </li>
                        
                        <!-- // loop -->
                    </ul>
                    <a class="btn_close" href="#none">닫기</a>
                </div>
                <!-- 구간 리스트 Layer -->
            </div>
            <!--// 구간선택 -->
        </div>
    
        <br>
    
        <div class="tab_wrap">
            <ul class="tab mt20 added4" id="tab_ancillary" style="padding-inline-start: 0px;">
                <li id="tab_ancillary_seat" class="on">
                	<a href="javascript:void(0);" onclick="modalSeat();">좌석</a>
                </li>
                <li id="tab_ancillary_baggage">
                	<a href="javascript:void(0);" onclick="modalBaggage();">수하물</a>
                </li>
                <li id="tab_ancillary_meal">
                	<a href="javascript:void(0);" onclick="modalMeal();">기내식</a>
                </li>
                <li id="tab_ancillary_insurance">
                	<a href="javascript:void(0);" onclick="modalInsurance();">여행보험</a>
                </li>
            </ul>
            <div class="sel_passenger_wrap mt20">
                <!-- 탑승자 선택 슬라이드 -->
                <div class="sel_passenger_slide swiper-container swiper-container-horizontal">
                    <ul class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(480px, 0px, 0px);">
                            
                                <li class="swiper-slide swiper-slide-active" title="탑승객 선택됨" style="width: 240px;">
                                    <div class="sel_passenger_box">
                                        <i cla	ss="num">1</i>
                                        <div class="name ADULT_M">
                                            <div class="pet" style="display: none;">
                                                <p class="petc"><span class="blind">반려동물동반탑승</span></p>
                                            </div>
                                            <p class="first">KIM</p>
                                            <p class="last">NAMHO</p>
                                        </div>
                                        <div class="add_service">
                                            <p class="add_service">
                                                <span class="sel_print" style="display: none;"></span>
                                                <span class="ico"></span>
                                                <span class="seatNo"></span>
                                                <a class="btn_del" href="#none" onclick="cancelSelectedSsr(this);" style="display: none;">삭제</a>
                                                <span class="ico_add_petc"></span>
                                            </p>
                                            <p class="add_price" style="display: none;">
                                                <span class="currency">KRW</span>
                                                <span class="price">0</span>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                            
                                <li class="swiper-slide swiper-slide-next" data-passengernumber="300497129" style="width: 240px;">
                                    <div class="sel_passenger_box">
                                        <i class="num">2</i>
                                        <div class="name ADULT_M">
                                            <div class="pet" style="display: none;">
                                                <p class="petc"><span class="blind">반려동물동반탑승</span></p>
                                            </div>
                                            <p class="first">KIM</p>
                                            <p class="last">USER</p>
                                        </div>
                                        <div class="add_service">
                                            <p class="add_service">
                                                <span class="sel_print" style="display: none;"></span>
                                                <span class="ico"></span>
                                                <a class="btn_del" href="#none" onclick="cancelSelectedSsr(this);" style="display: none;">삭제</a>
                                                <span class="ico_add_petc"></span>
                                            </p>
                                            <p class="add_price" style="display: none;">
                                                <span class="currency">KRW</span>
                                                <span class="price">0</span>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                            
                        
                    </ul>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                <!--// 탑승자 선택 슬라이드 -->
    
                    <!-- 슬라이드 버튼 -->
                    <a class="btn_slide_prev swiper-button-disabled" href="#none" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</a>
                    <a class="btn_slide_next" href="#none" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">다음</a>
                    <!--// 슬라이드 버튼 -->
    
                
    
            </div>
            <!--// 탑승자 선택 -->
        </div>

	<!-- seat 시작 -->
	<div class="seatCheckIn">

        <div class="user-seat">

	        <article class="seat-info">
	            <ul class="seat-grade-price">
	                <li class="premium-info">
	                    <span>프리미엄 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">39,000</span>
	                    </span>
	                <li class="semipremium-info">
	                    <span>세미프리미엄 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">17,000</span>
	                    </span>
	                </li>
	                <li class="front-info">
	                    <span>프론트 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">14,000</span>
	                    </span>
	                </li>
	                <li class="standard-info">
	                    <span>스탠다드 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">7,000</span>
	                    </span>
	                </li>
	                <li class="disabled-info">
	                    <span>선택불가 좌석</span>
	                </li>
	            </ul>
	            <hr style="border: 1px dashed lightgray;">
	            <ul class="airplain-info">
	                <li class="exit-info">비상구</li>
	                <li class="toilet-info">화장실</li>
	                <li class="galley-info">갤리</li>
	            </ul>
	        </article>
	    
		    <article class="seat-area">
		        <div class="seat-map">
		                <table class="seat-map economy">
		                    <caption>
		                        ECONOMY ZONE
		                        <br><br>
		                    </caption>
		                    <thead>
		                        <tr>
		                            <th>A</th>
		                            <th>B</th>
		                            <th>C</th>
		                            <th></th>
		                            <th>D</th>
		                            <th>E</th>
		                            <th>F</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="toilet">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_toilet.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="galley">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_galley.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="1A" value="1A" name="seat">
		                                <label for="1A" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="1B" value="1B" name="seat">
		                                <label for="1B" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="1C" value="1C" name="seat">
		                                <label for="1C" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>1</span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>  
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="2A" value="2A" name="seat">
		                                <label for="2A" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="2B" value="2B" name="seat">
		                                <label for="2B" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="2C" value="2C" name="seat">
		                                <label for="2C" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>2</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="2D" value="2D" name="seat">
		                                <label for="2D" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="2E" value="2E" name="seat">
		                                <label for="2E" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="2F" value="2F" name="seat">
		                                <label for="2F" class="premium" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="3A" value="3A" name="seat">
		                                <label for="3A" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="3B" value="3B" name="seat">
		                                <label for="3B" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="3C" value="3C" name="seat">
		                                <label for="3C" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>3</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="3D" value="3D" name="seat">
		                                <label for="3D" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="3E" value="3E" name="seat">
		                                <label for="3E" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="3F" value="3F" name="seat">
		                                <label for="3F" class="semipremium" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="4A" value="4A" name="seat">
		                                <label for="4A" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="4B" value="4B" name="seat">
		                                <label for="4B" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="4C" value="4C" name="seat">
		                                <label for="4C" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>4</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="4D" value="4D" name="seat">
		                                <label for="4D" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="4E" value="4E" name="seat">
		                                <label for="4E" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="4F" value="4F" name="seat">
		                                <label for="4F" class="semipremium" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="5A" value="5A" name="seat">
		                                <label for="5A" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="5B" value="5B" name="seat">
		                                <label for="5B" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="5C" value="5C" name="seat">
		                                <label for="5C" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>5</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="5D" value="5D" name="seat">
		                                <label for="5D" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="5E" value="5E" name="seat">
		                                <label for="5E" class="semipremium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="5F" value="5F" name="seat">
		                                <label for="5F" class="semipremium" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="6A" value="6A" name="seat">
		                                <label for="6A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="6B" value="6B" name="seat">
		                                <label for="6B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="6C" value="6C" name="seat">
		                                <label for="6C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>6</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="6D" value="6D" name="seat">
		                                <label for="6D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="6E" value="6E" name="seat">
		                                <label for="6E" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="6F" value="6F" name="seat">
		                                <label for="6F" class="front" id="seat-check"></label>
		                                </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="7A" value="7A" name="seat">
		                                <label for="7A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="7B" value="7B" name="seat">
		                                <label for="7B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="7C" value="7C" name="seat">
		                                <label for="7C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>7</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="7D" value="7D" name="seat">
		                                <label for="7D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="7E" value="7E" name="seat">
		                                <label for="7E" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="7F" value="7F" name="seat">
		                                <label for="7F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="8A" value="8A" name="seat">
		                                <label for="8A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="8B" value="8B" name="seat">
		                                <label for="8B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="8C" value="8C" name="seat">
		                                <label for="8C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>8</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="8D" value="8D" name="seat">
		                                <label for="8D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="8E" value="8E" name="seat">
		                                <label for="8E" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="8F" value="8F" name="seat">
		                                <label for="8F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="9A" value="9A" name="seat">
		                                <label for="9A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="9B" value="9B" name="seat">
		                                <label for="9B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="9C" value="9C" name="seat">
		                                <label for="9C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>9</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="9D" value="9D" name="seat">
		                                <label for="9D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="9E" value="9E" name="seat">
		                                <label for="9E" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="9F" value="9F" name="seat">
		                                <label for="9F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="10A" value="10A" name="seat">
		                                <label for="10A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="10B" value="10B" name="seat">
		                                <label for="10B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="10C" value="10C" name="seat">
		                                <label for="10C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>10</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="10D" value="10D" name="seat">
		                                <label for="10D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="10E" value="10E" name="seat">
		                                <label for="10E" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="10F" value="10F" name="seat">
		                                <label for="10F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="11A" value="11A" name="seat">
		                                <label for="11A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="11B" value="11B" name="seat">
		                                <label for="11B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="11C" value="11C" name="seat">
		                                <label for="11C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>11</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="11D" value="11D" name="seat">
		                                <label for="11D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="11E" value="11E" name="seat">
		                                <label for="11E" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="11F" value="11F" name="seat">
		                                <label for="11F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left-start">
		                                <input type="radio" id="12A" value="12A" name="seat">
		                                <label for="12A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="12B" value="12B" name="seat">
		                                <label for="12B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="12C" value="12C" name="seat">
		                                <label for="12C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>12</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="12D" value="12D" name="seat">
		                                <label for="12D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="12E" value="12E" name="seat">
		                                <label for="12E" class="front" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right-start">
		                                <input type="radio" id="12F" value="12F" name="seat">
		                                <label for="12F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="13A" value="13A" name="seat">
		                                <label for="13A" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="13B" value="13B" name="seat">
		                                <label for="13B" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="13C" value="13C" name="seat">
		                                <label for="13C" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>13</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="13D" value="13D" name="seat">
		                                <label for="13D" class="front" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="13E" value="13E" name="seat">
		                                <label for="13E" class="front" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="13F" value="13F" name="seat">
		                                <label for="13F" class="front" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="14A" value="14A" name="seat">
		                                <label for="14A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="14B" value="14B" name="seat">
		                                <label for="14B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="14C" value="14C" name="seat">
		                                <label for="14C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>14</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="14D" value="14D" name="seat">
		                                <label for="14D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="14E" value="14E" name="seat">
		                                <label for="14E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="14F" value="14F" name="seat">
		                                <label for="14F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td class="wing-right">
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="15A" value="15A" name="seat">
		                                <label for="15A" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="15B" value="15B" name="seat">
		                                <label for="15B" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="15C" value="15C" name="seat">
		                                <label for="15C" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>15</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="15D" value="15D" name="seat">
		                                <label for="15D" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="15E" value="15E" name="seat">
		                                <label for="15E" class="premium" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="15F" value="15F" name="seat">
		                                <label for="15F" class="premium" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td class="wing-right">
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="16A" value="16A" name="seat">
		                                <label for="16A" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="16B" value="16B" name="seat">
		                                <label for="16B" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="16C" value="16C" name="seat">
		                                <label for="16C" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>16</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="16D" value="16D" name="seat">
		                                <label for="16D" class="premium" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="16E" value="16E" name="seat">
		                                <label for="16E" class="premium" id="seat-check"></label>
		                            </td>
		                            <td class="c-facilities -wing-right">
		                                <input type="radio" id="16F" value="16F" name="seat">
		                                <label for="16F" class="premium" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="c-facilities -wing-left">
		                                <input type="radio" id="17A" value="17A" name="seat">
		                                <label for="17A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="17B" value="17B" name="seat">
		                                <label for="17B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="17C" value="17C" name="seat">
		                                <label for="17C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>17</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="17D" value="17D" name="seat">
		                                <label for="17D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="17E" value="17E" name="seat">
		                                <label for="17E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="17F" value="17F" name="seat">
		                                <label for="17F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="18A" value="18A" name="seat">
		                                <label for="18A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="18B" value="18B" name="seat">
		                                <label for="18B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="18C" value="18C" name="seat">
		                                <label for="18C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>18</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="18D" value="18D" name="seat">
		                                <label for="18D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="18E" value="18E" name="seat">
		                                <label for="18E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="18F" value="18F" name="seat">
		                                <label for="18F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left-end">
		                                <input type="radio" id="19A" value="19A" name="seat">
		                                <label for="19A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="19B" value="19B" name="seat">
		                                <label for="19B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="19C" value="19C" name="seat">
		                                <label for="19C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>19</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="19D" value="19D" name="seat">
		                                <label for="19D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="19E" value="19E" name="seat">
		                                <label for="19E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td class="wing-right-end">
		                                <input type="radio" id="19F" value="19F" name="seat">
		                                <label for="19F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="20A" value="20A" name="seat">
		                                <label for="20A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="20B" value="20B" name="seat">
		                                <label for="20B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="20C" value="20C" name="seat">
		                                <label for="20C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>20</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="20D" value="20D" name="seat">
		                                <label for="20D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="20E" value="20E" name="seat">
		                                <label for="20E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="20F" value="20F" name="seat">
		                                <label for="20F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="21A" value="21A" name="seat">
		                                <label for="21A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="21B" value="21B" name="seat">
		                                <label for="21B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="21C" value="21C" name="seat">
		                                <label for="21C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>21</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="21D" value="21D" name="seat">
		                                <label for="21D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="21E" value="21E" name="seat">
		                                <label for="21E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="21F" value="21F" name="seat">
		                                <label for="21F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="22A" value="22A" name="seat">
		                                <label for="22A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="22B" value="22B" name="seat">
		                                <label for="22B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="22C" value="22C" name="seat">
		                                <label for="22C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>22</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="22D" value="22D" name="seat">
		                                <label for="22D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="22E" value="22E" name="seat">
		                                <label for="22E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="22F" value="22F" name="seat">
		                                <label for="22F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="23A" value="23A" name="seat">
		                                <label for="23A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="23B" value="23B" name="seat">
		                                <label for="23B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="23C" value="23C" name="seat">
		                                <label for="23C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>23</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="23D" value="23D" name="seat">
		                                <label for="23D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="23E" value="23E" name="seat">
		                                <label for="23E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="23F" value="23F" name="seat">
		                                <label for="23F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="24A" value="24A" name="seat">
		                                <label for="24A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="24B" value="24B" name="seat">
		                                <label for="24B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="24C" value="24C" name="seat">
		                                <label for="24C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>24</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="24D" value="24D" name="seat">
		                                <label for="24D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="24E" value="24E" name="seat">
		                                <label for="24E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="24F" value="24F" name="seat">
		                                <label for="24F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="25A" value="25A" name="seat">
		                                <label for="25A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="25B" value="25B" name="seat">
		                                <label for="25B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="25C" value="25C" name="seat">
		                                <label for="25C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>25</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="25D" value="25D" name="seat">
		                                <label for="25D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="25E" value="25E" name="seat">
		                                <label for="25E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="25F" value="25F" name="seat">
		                                <label for="25F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="26A" value="26A" name="seat">
		                                <label for="26A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="26B" value="26B" name="seat">
		                                <label for="26B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="26C" value="26C" name="seat">
		                                <label for="26C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>26</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="26D" value="26D" name="seat">
		                                <label for="26D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="26E" value="26E" name="seat">
		                                <label for="26E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="26F" value="26F" name="seat">
		                                <label for="26F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="27A" value="27A" name="seat">
		                                <label for="27A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="27B" value="27B" name="seat">
		                                <label for="27B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="27C" value="27C" name="seat">
		                                <label for="27C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>27</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="27D" value="27D" name="seat">
		                                <label for="27D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="27E" value="27E" name="seat">
		                                <label for="27E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="27F" value="27F" name="seat">
		                                <label for="27F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="28A" value="28A" name="seat">
		                                <label for="28A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="28B" value="28B" name="seat">
		                                <label for="28B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="28C" value="28C" name="seat">
		                                <label for="28C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>28</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="28D" value="28D" name="seat">
		                                <label for="28D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="28E" value="28E" name="seat">
		                                <label for="28E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="28F" value="28F" name="seat">
		                                <label for="28F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="29A" value="29A" name="seat">
		                                <label for="29A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="29B" value="29B" name="seat">
		                                <label for="29B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="29C" value="29C" name="seat">
		                                <label for="29C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>29</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="29D" value="29D" name="seat">
		                                <label for="29D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="29E" value="29E" name="seat">
		                                <label for="29E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="29F" value="29F" name="seat">
		                                <label for="29F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="30A" value="30A" name="seat">
		                                <label for="30A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="30B" value="30B" name="seat">
		                                <label for="30B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="30C" value="30C" name="seat">
		                                <label for="30C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>30</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="30D" value="30D" name="seat">
		                                <label for="30D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="30E" value="30E" name="seat">
		                                <label for="30E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="30F" value="30F" name="seat">
		                                <label for="30F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="31A" value="31A" name="seat">
		                                <label for="31A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="31B" value="31B" name="seat">
		                                <label for="31B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="31C" value="31C" name="seat">
		                                <label for="31C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>31</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="31D" value="31D" name="seat">
		                                <label for="31D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="31E" value="31E" name="seat">
		                                <label for="31E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="31F" value="31F" name="seat">
		                                <label for="31F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="32A" value="32A" name="seat">
		                                <label for="32A" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="32B" value="32B" name="seat">
		                                <label for="32B" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>    
		                                <input type="radio" id="32C" value="32C" name="seat">
		                                <label for="32C" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <span>32</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="32D" value="32D" name="seat">
		                                <label for="32D" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="32E" value="32E" name="seat">
		                                <label for="32E" class="standard" id="seat-check"></label>
		                            </td>
		                            <td>
		                                <input type="radio" id="32F" value="32F" name="seat">
		                                <label for="32F" class="standard" id="seat-check"></label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span class="toilet">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_toilet.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="toilet">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_toilet.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="galley">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_galley.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="galley">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_galley.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                        </tr>
		                        
		                    </tbody>
		                </table>
		            
		        </div>
		    </article>
    	</div>
	    <div class="notice_box mt70">
	        <strong style="color: red; font-size: 30px;">알아두세요</strong>
	        <!--사용중인 메뉴 : 부가서비스 좌석 선택, 비즈니스 좌석선택, 좌석 추가구매-->
	        <br><br>
	
	        <ul class="ul_dot">
	            <li>비즈니스 운임의 경우 국내선 탑승 당일 35분 전, 국제선 3시간 전까지 선택 가능 합니다.</li>
	            <li>이노코미 운임(이벤트/스마트/일반운임)은 출발일이 임박한 경우(25시간 이내) 좌석 구매가 불가합니다.</li>
	            <li> 비상구 좌석은 승무원을 도와 다른 승객의 탈출을 돕는 자리로 조건에 맞지 않는 경우 현장에서 직원의 확인 후 거절될 수 있으며 환불되지 않습니다.<br>
	            <div class="btn_wrap_svc">
	                <button type="button" date-type="layer" date-id="exit_seat_rule_layer" onclick="exitSeatRuleLayer();" title="레이어 팝업 열림" class="sbtn_cont"><span>비상구 좌석 배정 제한 규정보기</span></button>
	            </div>
	            </li>
	            <li>국제선 만 12세, 국내선 만 13세 미만의 소아는 반드시 성인 보호자 옆에 배정되어야 합니다.</li>
	            <li>항공기 기종에 따라 좌석의 앞뒤, 좌우 간격이 상이할 수 있습니다.</li>
	            <li>좌석 변경은 취소 후 재구매 해주시기 바랍니다.</li>
	            <li>A330-300 기종의 1G, 15D, 15F, 16B 좌석은 유아용 요람 옆 좌석이니 이용에 참고 바랍니다.</li>
	            <li>유아용 요람은 "유아용 요람 이용 가능한 좌석"을 구매한 후에 예약센터를 통해 추가 요금 없이 신청이 가능합니다.<br>(국제선만 유아용 요람 서비스 신청이 가능하며, 국내선은 유아용 요람 서비스를 제공하지 않습니다.)</li>
	            <li style="color:red;">동물 알레르기가 있거나 반려동물 동반 승객과의 좌석 거리두기를 원하시는 경우, 반드시 탑승 수속 시 해당사항을 직원에게 알려주시기 바랍니다. (단, 당일 운행 상황에 따라 좌석 변경이 어려울 수 있습니다.)</li>
	        </ul>
	    </div>
	    
        <button class="btn_top" onclick="goTop();"></button>
	    
	</div>
	<!-- seat 끝 -->
	
	<!-- baggage시작 -->
	<div class="baggageCheckIn">
        <div class="weight-area">
            <span>위탁수하물 무게 선택</span> <br><br>
            <input type="radio" name="weight-select" id="weight1" value="15">
            <label for="weight1">0~15<br>(추가요금 X)</label>
            <input type="radio" name="weight-select" id="weight2" value="20">
            <label for="weight2">15~20<br>(KRW 30,000)</label>
            <input type="radio" name="weight-select" id="weight3" value="25">
            <label for="weight3">20~25<br>(KRW 60,000)</label>
            <input type="radio" name="weight-select" id="weight4" value="30">
            <label for="weight4">25~30<br>(KRW 90,000)</label>
            <input type="radio" name="weight-select" id="weight5" value="35">
            <label for="weight5">30~35<br>(KRW 120,000)</label>
        </div>

        <br><br>


        <ul style="list-style-type: none; font-size: 25px;" class="ul_dot mt20 baggageAvailability baggageAvailability_500">
            <li class="red">
                기내반입 및 위탁가능 무료수하물 허용량을 확인해보세요.  
                <div class="tbl_top_area">
                    <button class="sbtn_cont fl" date-id="carryon_luggage_layer" date-type="layer" onclick="carryOnLuggageLayer();">무료수하물 안내</button>
                    <br><br>
                </div>
            </li>
            <li>
                탑승객별 위탁수하물 요금을 확인하고, 초과 시 부과되는 요금을 확인해보세요.
                <div class="tbl_top_area">
                    <button class="sbtn_cont fl" onclick="baggagePriceLayer();">수하물 추가구매 안내</button>
                    <br><br>
                </div>
            </li>
            <li>
            	<p>부가서비스 번들을 구매한 승객은 예매완료 후 [마이페이지&gt;나의예약]에서 위탁수하물 추가로 구매하실 수 있습니다.<br></p>
            	<p>(단, 출발일이 임박한 여정, 공동운항편, 대양주노선 제외)</p>
            	<p><br><br><br><br><br><br></p></li>
        </ul>
        
        <button class="btn_top" onclick="goTop();"></button>
        
    </div> 
    <!-- baggage 끝 -->

	<!-- meal 시작 -->
	<div class="mealCheckIn">
        <div class="tab_cont mt0" tabindex="0" style="display: block;">
            <h4 class="hidden" id="choiceMeal">사전 기내식 선택</h4>
                    <div style="" class="food_list mealAvailability mealAvailability_500">
                        <div class="ico_guide ico_food_guide">
                            <span class="ico_food hot">핫밀</span>
                            <span class="ico_food cold">콜드밀</span>
                            <span class="ico_food adult">성인메뉴</span>
                            <span class="ico_food kid">키즈밀</span>
                            <span class="ico_food vege">채식</span>
                            <span class="ico_food reli">종교식</span>
                        </div>
                        <!-- 기내식 선택 -->
        
                        <div class="sel_food_wrap mealGroupInfo_1">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_1" value="LHML1">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>저녁식사를 선택해주세요</h2>
                                    <p class="time">출발 2~3시간 후 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img on">
                                                <img alt="기본 기내식" src="https://contents-image.twayair.com/contents/2022/1011/991cefde-7f2c-4893-a8dd-da97444b2efa.jpg">
                                                <span class="ico_bul ">베스트상품</span>
                                                <span class="ico_food ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('FREE');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value free" type="checkbox" data-meal_bundlechildssrcode="LHML1" data-meal_groupindex="1" data-meal_groupssrcode="MEAL1" data-meal_menudiv="든든식" data-meal_time="저녁식사" id="meal-500_1_1" name="meal_500_1" value="FREE">
                                                    <label for="meal-500_1_1"> 
                                                    	<span class="icon">기내식 추가 체크박스</span>
                                                    	<p>기본 기내식</p> 
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
        
                        <div class="sel_food_wrap mealGroupInfo_2  mt30">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_2" value="LHML2">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>아침식사를 선택해주세요</h2>
                                    <p class="time">도착 2~3시간 전 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img">
                                                <img alt="미트볼 푸실리 파스타" src="https://contents-image.twayair.com/contents/2022/0325/5d82d061-4fda-4afb-a5dc-4ecbc02debc8.jpg">
                                                <span class="ico_bul new ">베스트상품</span>
                                                <span class="ico_food hot ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('ZZ23');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value" type="checkbox" data-meal_bundlechildssrcode="LHML2" data-meal_groupindex="2" data-meal_groupssrcode="MEAL2" data-meal_menudiv="간편식" data-meal_time="아침식사" id="meal-500_2_1" name="meal_500_2" value="ZZ23">
                                                    <label for="meal-500_2_1">
                                                    	<span class="icon">기내식 추가 체크박스</span>
                                                    	<p>미트볼 푸실리 파스타</p>
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img on">
                                                <img alt="불고기 덮밥" src="https://contents-image.twayair.com/contents/2022/0325/91ce499b-e8c6-4979-b219-f59b2fd70a85.jpg">
                                                <span class="ico_bul new ">베스트상품</span>
                                                <span class="ico_food hot ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('ZZ24');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value" type="checkbox" data-meal_bundlechildssrcode="LHML2" data-meal_groupindex="2" data-meal_groupssrcode="MEAL2" data-meal_menudiv="간편식" data-meal_time="아침식사" id="meal-500_2_2" name="meal_500_2" value="ZZ24">
                                                    <label for="meal-500_2_2">
                                                     	<span class="icon">기내식 추가 체크박스</span>
                                                     	<p>불고기 덮밥</p>
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                
                
                    <div style="display: none;" class="food_list mealAvailability mealAvailability_501">
                        <div class="ico_guide ico_food_guide">
                                <span class="ico_food hot">핫밀</span>
                                <span class="ico_food cold">콜드밀</span>
                                <span class="ico_food adult">성인메뉴</span>
                                <span class="ico_food kid">키즈밀</span>
                                <span class="ico_food vege">채식</span>
                                <span class="ico_food reli">종교식</span>
                        </div>
                        <!-- 기내식 선택 -->
        
                        <div class="sel_food_wrap mealGroupInfo_1">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_1" value="LHML1">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>점심식사를 선택해주세요</h2>
                                    <h2 style="padding: 0;" class="freeMeal_501">(무상제공)</h2>
                                    <p class="time">출발 2~3시간 후 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img">
                                                <img alt="기본 기내식" src="https://contents-image.twayair.com/contents/2022/1011/991cefde-7f2c-4893-a8dd-da97444b2efa.jpg">
                                                <span class="ico_bul ">베스트상품</span>
                                                <span class="ico_food ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('FREE');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value free" type="checkbox" data-meal_bundlechildssrcode="LHML1" data-meal_groupindex="1" data-meal_groupssrcode="MEAL1" data-meal_menudiv="든든식" data-meal_time="점심식사" id="meal-501_1_1" name="meal_501_1" value="FREE">
                                                    <label for="meal-501_1_1">
                                                     <span class="icon">기내식 추가 체크박스</span>
                                                     <p>기본 기내식</p>
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
        
                        <div class="sel_food_wrap mealGroupInfo_2  mt30">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_2" value="LHML3">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>저녁식사를 선택해주세요</h2>
                                    <p class="time">도착 2~3시간 전 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img">
                                                <img alt="소고기 커리라이스" src="https://contents-image.twayair.com/contents/2022/1209/5cd05bd5-4cc4-4a39-85b6-e981c7e3e640.png">
                                                <span class="ico_bul new ">베스트상품</span>
                                                <span class="ico_food hot ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('ZS01');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value" type="checkbox" data-meal_bundlechildssrcode="LHML3" data-meal_groupindex="2" data-meal_groupssrcode="MEAL3" data-meal_menudiv="간편식" data-meal_time="저녁식사" id="meal-501_2_1" name="meal_501_2" value="ZS01">
                                                  	<label for="meal-501_2_1">
	                                                  	<span class="icon">기내식 추가 체크박스</span>
	                                                  	<p>소고기 커리라이스</p>
                                                  	</label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img">
                                                <img alt="비프 볼로네제 스파게티" src="https://contents-image.twayair.com/contents/2022/1209/865c7d0d-9dbe-4564-a77d-681b76976711.png">
                                                <span class="ico_bul new ">베스트상품</span>
                                                <span class="ico_food hot ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('ZS02');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value" type="checkbox" data-meal_bundlechildssrcode="LHML3" data-meal_groupindex="2" data-meal_groupssrcode="MEAL3" data-meal_menudiv="간편식" data-meal_time="저녁식사" id="meal-501_2_2" name="meal_501_2" value="ZS02">
                                                    <label for="meal-501_2_2">
                                                    	<span class="icon">기내식 추가 체크박스</span>
                                                    	<p>비프 볼로네제 스파게티</p>
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                
            <div class="food_deadline mealAvailability mealAvailability_BZ_NA non_service_wrap" style="display: none;">
                <p>기내식 사전 주문 기간이 마감되어 <br> 기본 기내식으로 제공됩니다.</p>
            </div>
            
            <div class="mealAvailability mealAvailability_NA non_service_wrap" style="display: none;">
                <div class="con_box">
                    <p class="note"></p><p class="note">선택하신 구간은 기내식 사전 구매가 불가합니다.</p><p></p>
                </div>
            </div>
            
            <div class="mealAvailability mealAvailability_NI non_service_wrap" style="display: none;">
                <div class="con_box">
                    <p class="note">선택하신 번들은 기내식이 포함되어 있지 않습니다.<br>예약 완료 후 예약 상세에서 추가로 구매하실 수 있습니다.</p>
                </div>
            </div>
        
            <!-- 번들 선택 안내 -->
            <div class="tbl_top_area mt30">
                <button class="sbtn_cont fr" date-id="layer_food" date-type="layer" onclick="ruleLayer('ANCILLARY_MEAL_RULE');">기내식 규정</button>
            </div>
            <!--// 번들 선택 안내 -->
            <div class="mealAvailability mealAvailability_FR non_service_wrap" style="display: none;">
                <div class="con_box">
                    <p class="note">기내식은 {0}회 무상으로 제공됩니다.</p>
                </div>
            </div>
            
        
            <script type="text/javascript">
                /**
                 * 기내식 선택에 대한 이벤트 처리
                 */
                $(document).ready(function(){
                    $('div.mealAvailability input.meal_value').change(function(){
                        if($(this).val() == 'FREE') {
                            $(this).prop('checked', true);
                        } else {
                            var meal_value = $(this).val();
                            var meal_name = $(this).parent().find('label p').text();
                            var meal_amount = $(this).data('meal_amount');
                            var checkbox_name = $(this).attr('name');
                            var meal_bundleChildSsrCode = $(this).data('meal_bundlechildssrcode');
                            var meal_groupSsrCode = $(this).data('meal_groupssrcode');
                            var meal_groupIndex = $(this).data('meal_groupindex');
                            var meal_time = $(this).data('meal_time');
                            var meal_menuDiv = $(this).data('meal_menudiv');
            
                            $.each($('div.mealAvailability input[name=' + checkbox_name + ']'), function(index,el){
                                $(el).parents('div.sel_food_info').find('div.img').removeClass('on');
                                if($(el).val() != meal_value){
                                    $(el).prop('checked', false);
                                }
                            });
                            if($(this).prop('checked')) {
                                $(this).parents('div.sel_food_info').find('div.img').addClass('on');
                            } else {
                                $(this).parents('div.sel_food_info').find('div.img').removeClass('on');
                            }
            
                            if($('div.mealAvailability input[name=' + checkbox_name + ']:checked').length==0){
                                meal_value = '*';
                                meal_name = '*';
                                meal_amount = '0';
                                meal_bundleChildSsrCode = '*';
                                meal_groupSsrCode = '*';
                                meal_time = '*';
                                meal_menuDiv = '*';
                            }
            
                            var passengerInfo = getPassengerInfo();
                            passengerInfo.data('meal_value' + meal_groupIndex, meal_value);
                            passengerInfo.data('mealinfo' + meal_groupIndex, meal_value);
                            passengerInfo.data('meal_name' + meal_groupIndex, meal_name);
                            passengerInfo.data('meal_time' + meal_groupIndex, meal_time);
                            passengerInfo.data('meal_menudiv' + meal_groupIndex, meal_menuDiv);
                            passengerInfo.data('meal_amount' + meal_groupIndex, meal_amount);
                            passengerInfo.data('meal_bundlechildssrcode' + meal_groupIndex, meal_bundleChildSsrCode);
                            passengerInfo.data('meal_groupssrcode' + meal_groupIndex, meal_groupSsrCode);
                            displayPassengerBundleInfo(currentPassengerIndex);
                            // showNextPassenger();
                        }
                    });
        
                    //툴팁 포커스 추가
                    $('.sbtn_cont').on('click', function(){
                        $(this).addClass('focus');
                    });
                })
            </script>
        
            <script type="text/javascript">
                $(document).ready(function() {
                });
            </script>
        </div>
    </div>
	<!-- meal 끝 -->

	<!-- insurance 시작 -->
	<div class="insuranceCheckIn">
		<div class="tab_cont" id="insuranceCheckIn" tabindex="0" style="display: block;">
        	<h4 class="hidden" id="choiceInsurance">여행자 보험 선택</h4>
        

	        <ul class="ul_dot mb20">    <li>보험은 일자별로 신청 가능하며 1일 적용 기준은 00시 ~ 24시 입니다.<br></li><li>여행기간 변경 시 기간에 따라 보험료가 변경될 수 있습니다.</li>
	            <li>편도 항공권 또는 귀국일 미확정인 경우 보험기간을 직접 선택하여 주세요.(국내선 최대1개월 / 국제선 최대3개월)</li>
	            <li><span style="color: rgb(192, 80, 77);">보험기간은 피보험자가 주거지를 출발하여 여행을 마치고 주거지에 도착할 때까지의 기간(이하 “여행기간”)으로 설정하시기 바랍니다.</span></li>
	            <li>피보험자가 입력한 기간의 전부 또는 일부가 여행기간이 아닌 경우 해당기간 동안 발생한 사고에 대해서는 보상을 받지 못할 수 있습니다.</li>
	            <li>실제 여행기간이 피보험자가 설정한 기간 이외의 기간을 포함할 경우 사전에 회사에 알리고 기간을 변경하셔야 해당 기간에 대한 보상이 가능합니다.</li>
	            <li>여행예정인 국가 중 보험인수 제한국가가 포함되어 있을 경우 보험가입이 불가합니다.&nbsp;&nbsp;<a class="btn_txt red" href="https://www.acedirect.co.kr/jsp/restrictCountry.jsp" target="_blank" role="button" aria-hidden="false">보험인수제한국가</a></li>
	        </ul>
	        <!-- <ul class="ul_dot mb20">
	            <li>손해보험협회 심의필 : 제 00000호 2020.07.02</li>
	            <li>편도 항공권 또는 귀국일 미확정인 경우 보험기간을 직접 선택하여 주세요.(최대 3개월까지 가입 가능)</li>
	            <li class="red">보험기간은 피보험자가 주거지를 출발하여 여행을 마치고 주거지에 도착할 때까지의 기간(이하 “여행기간”)으로 설정하시기 바랍니다.</li>
	            <li>피보험자가 입력한 기간의 전부 또는 일부가 여행기간이 아닌 경우 해당기간 동안 발생한 사고에 대해서는 보상을 받지 못할 수 있습니다.</li>
	            <li>실제 여행기간이 피보험자가 설정한 기간 이외의 기간을 포함할 경우 사전에 회사에 알리고 기간을 변경하셔야 해당 기간에 대한 보상이 가능합니다.</li>
	        </ul> -->
	        <form id="insureForm" method="post" name="insureForm">
                <input id="pnrNumber" name="pnrNumber" type="hidden" value="LN7873">
                <input id="currency" name="currency" type="hidden" value="KRW">
                <input id="segmentId" name="segmentId" type="hidden" value="500">
                <input id="nationCode" name="nationCode" type="hidden" value="AU">
                <input id="email" name="email" type="hidden" value="psun0215@naver.com">
                <input id="domIntDiv" name="domIntDiv" type="hidden" value="I">
                <input id="accessToken" name="accessToken" type="hidden">

                <div class="grid mb20">
                <table class="tb_row">
                    <caption>여행 정보 및 휴대전화 정보 - 여행 기간, 여행국가, 휴대전화 입력 표 입니다.</caption>
                    <colgroup>
                        <col style="width:20%">
                        <col style="width:20%">
                        <col style="width:20%">
                        <col style="width:30%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>여행기간</th>
                            <td colspan="3">
                                <div class="input_wrap">
                                    <span class="input_date">
                                        <input class="w200" id="policyStartDate" name="policyStartDate" onchange="changePolicyDate();" onkeyup="onlyNumHyphen(this);" placeholder="YYYY-MM-DD" readonly="readonly" title="여행 출발날짜" type="text" value="2022-12-31">
                                    </span>
                                    <span class="ml10 mr10">~</span>
                                    <span class="input_date">
                                        <input class="w200" id="policyEndDate" name="policyEndDate" onchange="changePolicyDate();" onkeyup="onlyNumHyphen(this);" readonly="readonly" title="여행 종료날짜" type="text" value="2023-01-03">
                                        <a class="btn_date date_focus" id="end" onclick="showEndCalendar();">날짜선택</a>
                                    </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>여행국가</th>
                            <td>호주</td>
                            <th>휴대전화</th>
                            <td>
                                <input class="w260" id="phoneNo" name="phoneNo" onkeyup="onlyNum(this);" placeholder="ex)01012345678" title="휴대전화 번호 입력" type="text" value="01027157383">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>

	        <div class="grid mb10">
	            <table class="tb_col st">
	                <caption>보험 종류 및 가입자 정보 - 가입자명, 성별, 생년월일, 고급형, 표준형, 실속형, 선택 표 입니다.</caption>
	                <colgroup>
	                    <col style="width:auto">
	                    <col style="width:5%">
	                    <col style="width:10%">
	                    <col style="width:7%">
	                    <col style="width:9%">
	                    <col style="width:7%">
	                    <col style="width:9%">
	                    <col style="width:7%">
	                    <col style="width:9%">
	                    <col style="width:11%">
	                </colgroup>
	                <thead>
	                    <tr>
	                        <th class="left pl30" rowspan="2">가입자명</th>
	                        <th rowspan="2">성별</th>
	                        <th rowspan="2">생년월일</th>
	                        <th colspan="2" id="planTitle_1">실속형</th>
	                        <th colspan="2" id="planTitle_2">표준형</th>
	                        <th colspan="2" id="planTitle_3">고급형</th>
	                        <th rowspan="2">선택</th>
	                    </tr>
	                    <tr>
	                        <th>가입금액</th>
	                        <th>보험료(KRW)</th>
	                        <th>가입금액</th>
	                        <th>보험료(KRW)</th>
	                        <th>가입금액</th>
	                        <th>보험료(KRW)</th>
	                    </tr>
	                </thead>
	                <tbody>
						<input name="name" type="hidden" id="name_301782321" value="KIMSEONKYOUNG">
						<input name="gender" type="hidden" id="gender_301782321" value="M">
						<!-- 여행자 보험 가입 체크 여부 -->
						<input name="agreeInscIndGuide" type="hidden" value="false" data-guestid="301782321" id="agreeInscIndGuide_301782321">
						<tr>
						    <td class="left">
						        <div>
						            <input name="chkInscPax" type="checkbox" data-guestid="301782321" id="check_301782321">
						            <label class="mr15" for="check_301782321">
						                <span class="icon"></span>
						                <span class="name ADULT_M"></span>
						                <span>KIM/SEONKYOUNG</span>
						            </label>
						        </div>
						    </td>
						    <td>남성</td>
						    <td>
						        <input class="date-input w190" max="2999-12-31" maxlength="10" min="1900-01-01" name="birth" onblur="(this.type='text')" onfocus="(this.type='date')" placeholder="ex)2021-12-31" style="width:160px" title="생년월일 입력" type="text" id="birth_301782321" onchange="getPlanList(301782321);" onkeyup="changeDateFormat(301782321);" value="1992-02-15" disabled="">
						    </td>
						    <td id="planAmt_301782321_1" name="amt_301782321">-</td>
						    <td id="insureAmt_301782321_1" name="amt_301782321">-</td>
						    <td id="planAmt_301782321_2" name="amt_301782321">-</td>
						    <td id="insureAmt_301782321_2" name="amt_301782321">-</td>
						    <td id="planAmt_301782321_3" name="amt_301782321">-</td>
						    <td id="insureAmt_301782321_3" name="amt_301782321">-</td>
						    <td>
						        <span class="select">
						            <select name="planType" onchange="calculateFareSummary()" title="유형선택" data-guestid="301782321" id="planSelect_301782321" disabled="">
						                
						            <option value="">선택</option></select>
						        </span>
						    </td>
						</tr>
						
						<input name="name" type="hidden" id="name_301782322" value="KIMSEON">
						<input name="gender" type="hidden" id="gender_301782322" value="M">
						<!-- 여행자 보험 가입 체크 여부 -->
						<input name="agreeInscIndGuide" type="hidden" value="false" data-guestid="301782322" id="agreeInscIndGuide_301782322">
						<tr>
						    <td class="left">
						        <div>
						            <input name="chkInscPax" type="checkbox" data-guestid="301782322" id="check_301782322">
						            <label class="mr15" id="insuranceLabel" for="check_301782322">
						                <span class="icon"></span>
						                <span class="name ADULT_M"></span>
						                <span>KIM/SEON</span>
						            </label>
						        </div>
						    </td>
						    <td>남성</td>
						    <td>
						        <input class="date-input w190" max="2999-12-31" maxlength="10" min="1900-01-01" name="birth" onblur="(this.type='text')" onfocus="(this.type='date')" placeholder="ex)2021-12-31" style="width:160px" title="생년월일 입력" type="text" id="birth_301782322" onchange="getPlanList(301782322);" onkeyup="changeDateFormat(301782322);" value="1995-08-09" disabled="">
						    </td>
						    <td id="planAmt_301782322_1" name="amt_301782322">-</td>
						    <td id="insureAmt_301782322_1" name="amt_301782322">-</td>
						    <td id="planAmt_301782322_2" name="amt_301782322">-</td>
						    <td id="insureAmt_301782322_2" name="amt_301782322">-</td>
						    <td id="planAmt_301782322_3" name="amt_301782322">-</td>
						    <td id="insureAmt_301782322_3" name="amt_301782322">-</td>
						    <td>
						        <span class="select">
						            <select disabled="disabled" name="planType" onchange="calculateFareSummary()" title="유형선택" data-guestid="301782322" id="planSelect_301782322">
						                <option value="">선택</option>
						            </select>
						        </span>
						    </td>
						</tr>
	                    
	                </tbody>
	            </table>
	        </div>
	
	        <div class="gray_input_box sum mb20">
	            <div class="sum_lft"><strong class="red" id="joinInscCnt">0</strong>명 가입</div>
	            <div class="sum_rig">납입보험료<strong class="red" id="totalInsureAmount">0 KRW</strong></div>
	        </div>

        
            <ul class="ul_dot mb40">
	            <li>가입 연령에 따라 담보 및 가입금액의 변경 또는 제한이 있을 수 있습니다.</li>
	            <li>상단 가입금액은 “상해사망 및 후유장해” 기준의 금액입니다.</li>
	            <li><a target="_blank" href="https://ec.aceinsurance.co.kr/jsp/b2ctway/contractplan/ContractPlanSHanaCoverageList.jsp?policyStartDate=&amp;policyStartHour=00&amp;policyEndDate=&amp;policyEndHour=24&amp;groupId=701139TAIR&amp;productCode=OTA461" class="btn_txt red">가입연령에 따른 플랜구성 및 세부 보장내역을 확인</a> 하세요.</li>
        	</ul>
            <!-- <ul class="ul_dot mb40">
                <li>가입 연령에 따라 담보 및 가입금액의 변경 또는 제한이 있을 수 있습니다.</li>
                <li>아래 가입금액은 “상해사망 및 후유장해” 기준의 금액입니다.</li>
                <li><a target="_blank" href="https://ec.aceinsurance.co.kr/jsp/b2ctway/contractplan/ContractPlanSHanaCoverageList.jsp?policyStartDate=&policyStartHour=00&policyEndDate=&policyEndHour=24&groupId=701139TAIR&productCode=OTA461" class="btn_txt red">가입연령에 따른 플랜구성 및 세부 보장내역을 확인</a> 하세요.</li>
            </ul> -->
        
	        <div id="termsArea" name="termsArea" style="display: none;">
	            <div class="bx_type1 terms">
	                <div class="txt_agree">
	                    <ul class="ul_dash">
	                        <li>본인은 본 보험계약의 피보험자로 되는 것에 동의하며, 만일 본인이 타 여행객을 대신하여 보험 가입절차를 이행하는 경우 본인은 여행계약 체결에 대하여 타 여행객으로부터 적법하게 대리권을 수여받았음을 확인합니다.</li>
	                        <li>만약 대리권이 존재하지 않는 경우, 그 범위 내에서 단체보험계약이 일부 무효로 되거나 보험사고시 보험금 지급이 거절될 수 있다는 점을 충분히 이해하였습니다.</li>
	                    </ul>
	                    <!-- <ul class="ul_dash">
	                        <li>본인은 본 보험계약의 피보험자로 되는 것에 동의하며, 만일 본인이 타 여행객을 대신하여 보험 가입절차를 이행하는 경우 본인은 여행계약 체결에 대하여 타 여행객으로부터 적법하게 대리권을 수여받았음을 확인합니다.</li>
	                        <li>만약 대리권이 존재하지 않는 경우, 그 범위 내에서 단체보험계약이 일부 무효로 되거나 보험사고시 보험금 지급이 거절될 수 있다는 점을 충분히 이해하였습니다.</li>
	                    </ul> -->
	                </div>
	                <div>
	                    <input id="agreeInscInfo" name="agreeInscInfo" type="checkbox">
	                    <label class="mr15" for="agreeInscInfo"><span class="icon"></span>동의함</label>
	                </div>
	            </div>
	            <div class="bx_type1 terms">
	                <div class="txt_agree">
	                    가입전  보험계약 중요 안내 사항을 확인하였습니다. <button class="sbtn_cont" date-id="lyr_insurance_guide" date-type="layer" onclick="showInsuranceGuide();" type="button">보험계약 중요 안내 사항</button>
	                </div>
	                <div>
	                    <input id="agreeInscGuide" name="agreeInscGuide" type="checkbox">
	                    <label class="mr15" for="agreeInscGuide"><span class="icon"></span>동의함</label>
	                </div>
	            </div>
	            <div class="bx_type1 terms mb40">
	                <!-- 여행보험 가입규약 동의 체크 여부 -->
	                <input id="agreeInscRule" name="agreeInscRule" type="hidden" value="false">
	                <!-- 개인정보 제3자 제공 동의 체크 여부 -->
	                <input id="agreeInscPrivacy" name="agreeInscPrivacy" type="hidden" value="false">
	                <div class="txt_agree">
	                    여행보험 가입규약 및 개인정보 제3자 제공 동의를 확인하였습니다. <button class="sbtn_cont" date-id="lyr_insurance_agree" date-type="layer" onclick="showInsurancePrivacy();" type="button">가입 규약 및 제3자 제공 동의</button>
	                </div>
	                <div>
	                    <input id="agreeInscRuleAndPrivacy" name="agreeInscRuleAndPrivacy" type="checkbox">
	                    <label class="mr15" for="agreeInscRuleAndPrivacy"><span class="icon"></span>동의함</label>
	                </div>
	            </div>
	
	            <!-- 알아두세요 -->
	            <div class="notice_box">
	                <strong>알아두세요</strong>
	                <ul class="ul_dot">
	                    <li>정확한 피보험자 정보인 경우에만 보험계약 조회 및 보험금 청구가 가능합니다. (단, 영문성명은 무관합니다.)</li>
	                    <li>본 계약은 보험계약자를 티웨이항공으로, 피보험자 및 보험수익자를 티웨이항공 여객 탑승객 또는  온라인 회원으로 하는 단체(취급) 여행보험 계약으로 <span class="red">티웨이항공 여객 탑승객 또는 온라인 회원만 피보험자로 가입 가능합니다.</span><br>티웨이항공 탑승객 또는 온라인 회원이 아닌 경우 가입이 불가합니다.</li>
	                    <li>기존 보험계약을 해지하고 새로운 보험계약을 체결하는 경우 보험인수가 거절되거나 보험료가 인상될 수 있으며, 보장내용 (면책기간 재적용 등)이 달라질 수 있습니다.</li>
	                    <li>계약체결 전 약관 및 상품설명서를 반드시 참고하여 주시기 바랍니다.</li>
	                    <li>이 보험계약은 예금자보호법에 따라 예금보험공사가 보호하되, 보호 한도는 본 보험회사에 있는 귀하의 모든 예금보호 대상 금융상품의 해약환급금(또는 만기 시 보험금이나 사고보험금)에 기타지급금을 합하여 1인당 “최고 5천만원”이며, 5천만원을 초과하는 나머지 금액은 보호하지 않습니다.<br> 다만, 보험계약자 및 보험료 납부자가 법인인 보험계약은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.  다만,보험계약자 및 보험료 납부자가 법인인 보험계약은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.</li>
	                    <li>지급한도, 면책사항 등에 따라 보험금 지급이 제한될 수 있습니다.</li>
	                    <li>해외여행 중 배상책임, 해외여행 중 휴대품손해, 해외여행 실손의료비 특별약관의 경우 보험금을 지급할 다수계약이 체결되어 있는 경우에는 약관에 따라 실손 비례 보상합니다.</li>
	                    <li>상해담보의 경우 암벽등반, 스카이다이빙 등 직업, 직무, 동호회 활동 중 발생한 사고는 보상하지 않습니다.</li>
	                </ul>
	            </div>
	            <!-- <div class="notice_box">
	                <strong>알아두세요</strong>
	                <ul class="ul_dot">
	                    <li>정확한 피보험자 정보인 경우에만 보험계약 조회 및 보험금 청구가 가능합니다. (단, 영문성명은 무관합니다.)</li>
	                    <li>본 계약은 보험계약자를 티웨이항공으로, 피보험자 및 보험수익자를 티웨이항공 여객 탑승객 또는  온라인 회원으로 하는 단체(취급) 여행보험 계약으로 <span class="red">티웨이항공 여객 탑승객 또는 온라인 회원만 피보험자로 가입 가능합니다.</span><br>티웨이항공 탑승객 또는 온라인 회원이 아닌 경우 가입이 불가합니다.</li>
	                    <li>기존 보험계약을 해지하고 새로운 보험계약을 체결하는 경우 보험인수가 거절되거나 보험료가 인상될 수 있으며, 보장내용 (면책기간 재적용 등)이 달라질 수 있습니다.</li>
	                    <li>계약체결 전 약관 및 상품설명서를 반드시 참고하여 주시기 바랍니다.</li>
	                    <li>이 보험계약은 예금자보호법에 따라 예금보험공사가 보호하되, 보호한도는 본 보험회사에 있는 귀하의 모든 예금 보호대상 금융상품의 해지 환급금(또는 만기시 보험금이나 사고보험금에 기타지급금을 합하여 1인당 최고 5천만원이며, 5천만원을 초과하는 나머지 금액은 보호하지 않습니다. <br>다만,보험계약자 및 보험료 납부자가 법인인 보험계약은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.</li>
	                    <li>지급한도, 면책사항 등에 따라 보험금 지급이 제한될 수 있습니다.</li>
	                </ul>
	            </div> -->
	            <!--// 알아두세요 -->
	        </div>
	        <br><br><br>
		</div>
    </div>	
	<!-- insurance 끝 -->
	</section>
		
	<script>
		 //처음 시작시 
		 $(function(){
		 	$(".seatCheckIn").css("display","block");
		 	$(".baggageCheckIn").css("display","none");
		 	$(".mealCheckIn").css("display","none");
		 	$(".insuranceCheckIn").css("display","none");
		 	
		 	$('#tab_ancillary_seat').attr('class','on');
		 	$('#tab_ancillary_baggage').removeClass('on');
		 	$('#tab_ancillary_meal').removeClass('on');
		 	$('#tab_ancillary_insurance').removeClass('on');
		 	
		 })
		 
		//좌석 클릭시
		 function modalSeat(){
		 	$('#tab_ancillary_seat').attr('class','on');
		 	$('#tab_ancillary_baggage').removeClass('on');
		 	$('#tab_ancillary_meal').removeClass('on');
		 	$('#tab_ancillary_insurance').removeClass('on');
		 	$('.add_service>span').show	('.seatNo');
		 	
		 	
		 	$(".seatCheckIn").css("display","block");
		 	$(".baggageCheckIn").css("display","none");
		 	$(".mealCheckIn").css("display","none");
		 	$(".insuranceCheckIn").css("display","none");
		 	
		 }
		 
		 //수화물 클릭시	
		 function modalBaggage(){
		 	$('#tab_ancillary_baggage').attr('class','on');
		 	$('#tab_ancillary_seat').removeClass('on');
		 	$('#tab_ancillary_meal').removeClass('on');
		 	$('#tab_ancillary_insurance').removeClass('on');
		 	$('.add_service>span').hide('.seatNo');
		 	
		 	$(".seatCheckIn").css("display","none");
		 	$(".baggageCheckIn").css("display","block");
		 	$(".mealCheckIn").css("display","none");
		 	$(".insuranceCheckIn").css("display","none");
		 }
		 	
		//기내식 클릭시	
		 function modalMeal(){
		 	$('#tab_ancillary_meal').attr('class','on');
		 	$('#tab_ancillary_seat').removeClass('on');
		 	$('#tab_ancillary_baggage').removeClass('on');
		 	$('#tab_ancillary_insurance').removeClass('on');
		 	
		 	$(".seatCheckIn").css("display","none");
		 	$(".baggageCheckIn").css("display","none");
		 	$(".mealCheckIn").css("display","block");
		 	$(".insuranceCheckIn").css("display","none");
		 }
		
		//여행보험 클릭시	
		 function modalInsurance(){
		 	$('#tab_ancillary_insurance').attr('class','on');
		 	$('#tab_ancillary_seat').removeClass('on');
		 	$('#tab_ancillary_baggage').removeClass('on');
		 	$('#tab_ancillary_meal').removeClass('on');
		 	
		 	$(".seatCheckIn").css("display","none");
		 	$(".baggageCheckIn").css("display","none");
		 	$(".mealCheckIn").css("display","none");
		 	$(".insuranceCheckIn").css("display","block");
		 }
		 
		 // 맨위로 이동
		 function goTop(){
		     $('html').scrollTop(0);
		     // scrollTop 메서드에 0 을 넣어서 실행하면 끝 !!
		     // 간혹 이 소스가 동작하지 않는다면
		     // $('html, body') 로 해보세요~
		 }
	</script>
		
	
	<div class="summary_wrap">
	    <div class="summary_top">
	        <div class="summary_top_cont">
	            <!-- 가격 -->
	            <div class="price_wrap" id="summaryTopPrice">
	                <span class="total">항공운임 등 총액</span>
	                
	                <span class="unit summary_currency">KRW</span>
	                <span class="price" id="summary_title_amount">334,650</span>
	                
	            </div>
	            <!-- 가격 -->
	            <!-- 버튼 -->
	            <div class="float--right font0" id="buttonSet">
	                <!-- booking_rule page -->
	                
	                <!-- // booking_rule page -->
	                <!-- booking_ssr page -->
	                
	                    <button class="btn_large gray buttonControl" id="buttonSkip" style="display: inline-block;" type="button">바로 결제</button>
	                    <button class="btn_large red buttonControl next" id="buttonNextStep" style="display: none;" type="button">다음 단계</button>
	                    <button class="btn_large red buttonControl next" id="buttonNextRoute" style="display: inline-block;" type="button">다음 구간</button>
	                
	            </div>
	        </div>
	    </div>
	                    
	</div>
		
		
		
	<script>

		$("#buttonNextRoute").on("click",function(){
			$.ajax({
				url : "booking3_1.re",
				data : {
					seat : $("input[name=seat]:checked").val()
					},
				success:function(result){
					$(".seatNo").html($("input[name=seat]:checked").val());
				},
				error : function() {
					console.log("실패");
				}
			});
		});

	</script>

</body>
</html>