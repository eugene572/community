
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html>
<div class="container">
<head>
    <meta charset="EUC-KR">
    <style>
        .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
        .wrap * {padding: 0;margin: 0;}
        .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
        .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
        .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
        .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
        .info .close:hover {cursor: pointer;}
        .info .body {position: relative;overflow: hidden;}
        .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
        .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
        .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
        .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
        .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
        .info .link {color: #5085BB;}
    </style>
    </head>
    <body>
<div id="map" style="width:1000px;height:800px; display: table; margin-left: auto; margin-right: auto; "></div>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f77d7afbd9a21da9048880826e1436b8"></script>

<script>

    function popup(){
      let options = "toolbar=no,scrollbars=no,resizable=yes,status=no,menubar=no,width=600, height=800, top=0,left=0";

      window.open("http://localhost:8000/board/testSms","_blank", options);
    }

    function closeOverlay() {
        overlay.setMap(null);
    }

    var container = document.getElementById('map');
    var options = {
    	center: new kakao.maps.LatLng(37.3402538780, 126.8700052143),
    	level: 11
    };

    var map = new kakao.maps.Map(container, options);

var positions = [
    {
       content: '<div class="wrap">' +
                            '    <div class="info">' +
                            '        <div class="title">' +
                            '            신영재동물병원' +
                            '            <div class="close" title="닫기"></div>' +
                            '        </div>' +
                            '        <div class="body">' +
                            '            <div class="img">' +
                            '                <img src="/image/0618.jpg.jpg" width="73" height="70">' +
                            '           </div>' +
                            '            <div class="desc">' +
                            '                <div class="ellipsis" onclick=popup()>인천광역시 계양구 장제로 923 (병방동)</div>' +
                            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +
                            '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                            '                <div onclick="popup()">문자 전송하기</div>' +
                            '            </div>' +
                            '        </div>' +
                            '    </div>' +
                            '</div>',
        latlng: new kakao.maps.LatLng(37.54886, 126.74138)
    },
    {
        content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            아프리카동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/06182.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>전라북도 전주시 덕진구 인후동1가 928-1</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 영평동 2181</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(35.837467, 127.15665)
    },
    {   content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(38.051083, 128.04692)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            양산시 동물보호센터' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>경상남도 양산시 동면 석산리 392 양산시농업기술센터</div>' +
                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 392 양산시농업기술센터</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(35.32409, 129.03416)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            양양군유기동물보호소' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>강원도 양양군 손양면 동막골길 115-35 </div>' +
                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 삽존리 13</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(38.020565, 128.64334)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            양평군유기동물보호소' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>경기도 양평군 양평읍 농업기술센터길 59-1</div>' +
                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 공흥리 1-1</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(37.5112, 127.51333)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            열린동물병원' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>서울특별시 용산구 원효로2가 84-10</div>' +
                              '                <div class="jibun ellipsis">(우) 84-10 (지번) 원리 90</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(36.43573, 129.35762)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            영덕유기동물보호센터' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>경상북도 영덕군 영덕읍 구미2길 14-1 (영덕읍) 영덕군유기동물보호센터</div>' +
                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 구미리 22</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(36.59424, 129.06415)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            양구군유기동물보호소' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(36.76658, 128.60089)
    },
    {   content: '<div class="wrap">' +
                              '    <div class="info">' +
                              '        <div class="title">' +
                              '            영주시 동물보호센터' +
                              '            <div class="close" title="닫기"></div>' +
                              '        </div>' +
                              '        <div class="body">' +
                              '            <div class="img">' +
                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                              '           </div>' +
                              '            <div class="desc">' +
                              '                <div class="ellipsis" onclick=popup()>경상북도 영주시 장수면 반구로 143 [*미고시] 영주시동물보호센터</div>' +
                              '                <div class="jibun ellipsis">(우) 407-8 (지번) 원리 90</div>' +
                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                              '                <div onclick="popup()">문자 전송하기</div>' +
                              '            </div>' +
                              '        </div>' +
                              '    </div>' +
                              '</div>',
        latlng: new kakao.maps.LatLng(35.99066, 128.92644)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            양구군유기동물보호소' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(36.67485, 128.47624)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            영천유기동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>경상북도 영천시 천문로 622-13 (오미동, 영천시농업기술센터)</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 오미동 1147-1</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(37.243313, 127.15933)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            예천군유기동물보호소' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>경상북도 예천군 예천읍 충효로 632-84 (예천읍, 유기동물보호소)</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(36.230583, 128.5661)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            완주군유기동물보호소' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>전라북도 완주군 용진읍 순지2길 187-6</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 신지리 산31-2</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(37.460052, 130.87376)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            용인시 동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>경기도 용인시 처인구 중부대로 1074-1 (삼가동) 용인시 동물보호센터</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 삼가동 164</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(35.41029, 129.28851)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            우리동물병원' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>인천광역시 서구 서곶로 349 (연희동) 우리동물병원</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(35.390892, 129.286)
    },
    {   content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            우성동물병원' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>경상북도 군위군 군위읍 중앙1길 17 (군위읍) </div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 서부리 151-31</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(37.00343,129.3606 )
     },{    content: '<div class="wrap">' +
                                                  '    <div class="info">' +
                                                  '        <div class="title">' +
                                                  '            울릉군농업기술센터' +
                                                  '            <div class="close" title="닫기"></div>' +
                                                  '        </div>' +
                                                  '        <div class="body">' +
                                                  '            <div class="img">' +
                                                  '                <img src="/image/0618.jpg" width="73" height="70">' +
                                                  '           </div>' +
                                                  '            <div class="desc">' +
                                                  '                <div class="ellipsis" onclick=popup()>경상북도 울릉군 울릉읍 신리길 68 (울릉읍, 울릉도축장)</div>' +
                                                  '                <div class="jibun ellipsis">(우) 928-1 (지번) 사동리 714-2</div>' +
                                                  '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                                  '                <div onclick="popup()">문자 전송하기</div>' +
                                                  '            </div>' +
                                                  '        </div>' +
                                                  '    </div>' +
                                                  '</div>',
         latlng: new kakao.maps.LatLng(37.416317, 127.91286)
     },{content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            울산유기동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>울산광역시 울주군 온양읍 화산발리로 543</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 발리 1144</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
         latlng: new kakao.maps.LatLng(36.108376, 127.48418)
     },{content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            울산유기동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>울산광역시 울주군 온양읍 화산발리로 543 (온양읍)</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
         latlng: new kakao.maps.LatLng(37.556873, 126.91909)
     },{content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            울산유기동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>울산광역시 울주군 온양읍 화산발리로 543 (온양읍)</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
         latlng: new kakao.maps.LatLng(37.297234, 127.57594)
     },{content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            울진군동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>경상북도 울진군 울진읍 대흥신림로 916-37 </div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 고성리 864-7</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
         latlng: new kakao.maps.LatLng(38.349674, 128.43439)
     },{content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            원주유기동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>강원도 원주시 호저면 칠봉로 110-6</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
         latlng: new kakao.maps.LatLng(35.178925, 128.89977)
     },{content: '<div class="wrap">' +
                                              '    <div class="info">' +
                                              '        <div class="title">' +
                                              '            유기동물보호센터' +
                                              '            <div class="close" title="닫기"></div>' +
                                              '        </div>' +
                                              '        <div class="body">' +
                                              '            <div class="img">' +
                                              '                <img src="/image/0618.jpg" width="73" height="70">' +
                                              '           </div>' +
                                              '            <div class="desc">' +
                                              '                <div class="ellipsis" onclick=popup()>경상북도 안동시 서후면 풍산태사로 3252-29 (서후면)</div>' +
                                              '                <div class="jibun ellipsis">(우) 928-1 (지번) 태장리 201-1s</div>' +
                                              '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                              '                <div onclick="popup()">문자 전송하기</div>' +
                                              '            </div>' +
                                              '        </div>' +
                                              '    </div>' +
                                              '</div>',
        latlng: new kakao.maps.LatLng(36.63599, 128.68384)
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            유기동물보호소' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>전라남도 여수시 주동1길 32 (주삼동, 여수시농업기술센터) 여수시 유기동물보호소</div>' +
                                             '                <div class="jibun ellipsis">(우) 1003-8 (지번) 원리 90</div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
           latlng: new kakao.maps.LatLng(35.0, 128.0)
       },{content: '<div class="wrap">' +
                                                '    <div class="info">' +
                                                '        <div class="title">' +
                                                '            양구군유기동물보호소' +
                                                '            <div class="close" title="닫기"></div>' +
                                                '        </div>' +
                                                '        <div class="body">' +
                                                '            <div class="img">' +
                                                '                <img src="/image/0618.jpg" width="73" height="70">' +
                                                '           </div>' +
                                                '            <div class="desc">' +
                                                '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                                                '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                                '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                                '                <div onclick="popup()">문자 전송하기</div>' +
                                                '            </div>' +
                                                '        </div>' +
                                                '    </div>' +
                                                '</div>',
        latlng: new kakao.maps.LatLng(37.084564,128.21506 )
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            제천시 동물보호센터' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>충청북도 제천시 금성면 적성로8길 51 (금성면)</div>' +
                                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 동막리 994-2</div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
        latlng: new kakao.maps.LatLng(37.504032, 126.71177)
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            종합축산' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>경상북도 문경시 중앙로 170 (흥덕동) 종합축산</div>' +
                                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
        latlng: new kakao.maps.LatLng(36.59969, 128.2025)
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            주동물병원' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>울산광역시 남구 돋질로 385-1 (삼산동)</div>' +
                                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 삼산동 180-33 </div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
        latlng: new kakao.maps.LatLng(35.543655, 129.34712)
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            진도군임시보호소 ' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>전라남도 진도군 진도읍 성죽골길 30 (진도읍) 진도개축산과</div>' +
                                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 동외리 268-14</div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
        latlng: new kakao.maps.LatLng(34.48236, 126.27857)
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            진안군유기동물보호소' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>전라북도 진안군 진안읍 예리길 36</div>' +
                                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 물곡리 1241</div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
        latlng: new kakao.maps.LatLng(35.780678, 127.46478)
    },{content: '<div class="wrap">' +
                                             '    <div class="info">' +
                                             '        <div class="title">' +
                                             '            진주시유기동물보호소' +
                                             '            <div class="close" title="닫기"></div>' +
                                             '        </div>' +
                                             '        <div class="body">' +
                                             '            <div class="img">' +
                                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                                             '           </div>' +
                                             '            <div class="desc">' +
                                             '                <div class="ellipsis" onclick=popup()>경상남도 진주시 집현면 신당길207번길 22 (집현면, 지역농업개발시설) </div>' +
                                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                                             '                <div onclick="popup()">문자 전송하기</div>' +
                                             '            </div>' +
                                             '        </div>' +
                                             '    </div>' +
                                             '</div>',
        latlng: new kakao.maps.LatLng(35.227085, 128.12187)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            진해유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상남도 창원시 진해구 웅천로 218 (성내동) 도시농업과 부지 내</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 성내동 205</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(35.114, 128.75432)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            짱구네동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>인천광역시 부평구 평천로 356 (갈산동)</div>' +
                             '                <div class="jibun ellipsis">(우) 59-5 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(37.51761, 126.7297)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            창원유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상남도 창원시 의창구 창이대로 71 (명서동, 창원시농업기술센터) 축산과</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(35.238277, 128.6456)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            천안시유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>충청남도 천안시 동남구 충절로 437 (삼룡동)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 삼룡동 146-28</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(36.783287, 127.17155)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            철원군' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 철원군 동송읍 장흥로 311</div>' +
                             '                <div class="jibun ellipsis">(우) 759 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
        latlng: new kakao.maps.LatLng(38.2034, 127.25024)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            청도군동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상북도 청도군 화양읍 청화3길 10 청도군 농업기술센터</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 범곡리 147</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(35.649292, 128.73438)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            청양보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>충청남도 청양군 대치면 청산로 446-17 (대치면)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 수석리 341-1</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(36.47119, 126.8314)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            청원동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>전라북도 남원시 죽항동 278번지</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(35.407578, 127.38455)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            최동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>충청남도 태안군 태안읍 남문리 504-6</div>' +
                             '                <div class="jibun ellipsis">(우) 504-6 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(36.747005, 126.29854)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            최상오동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>충청북도 보은군 보은읍 보은로 119-1 (보은읍)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(36.48483, 127.71766)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            최종주동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>충청북도 영동군 영동읍 계산로 54 (영동읍, 최종주동물병원)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(36.172623, 127.78233)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            충주시동물보호센터' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>충청북도 충주시 중앙탑면 일곱실길 70 (중앙탑면)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(37.00836, 127.849754)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            쿨펫 홈플러스 북구점' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>울산광역시 북구 신답로 26 (상안동, 홈플러스) 쿨펫동물병원 홈플러스 북구점</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 상안동 322-9</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(35.630043, 129.34488)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            태백시유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 태백시 문의재로 5 (통동)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(34.904377, 128.40442)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            통영시동물보호센터' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상남도 통영시 광도면 전두1길 9-8</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 노산리 251-34</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(37.63677, 128.55338)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            푸른곡성21동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>전라남도 곡성군 곡성읍 군청로 50 보호소 주소 : 전남 곡성군 곡성읍 구원리 888</div>' +
                             '                <div class="jibun ellipsis">(우) 888 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(35.28203, 127.29196)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            프렌즈동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>전라북도 전주시 완산구 삼천동1가 592-1</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(35.79635, 127.12236)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            하나동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>전라북도 전주시 덕진구 덕진동2가 송천중앙로 17 (덕진동2가)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(35.848854, 127.118546)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            하남동물병원' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 하남시 신평로 37 (덕풍동) 하남동물병원</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(37.537155, 127.20405)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            하동군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상남도 하동군 적량면 한옥정길 90 (적량면) 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 동산리 1830</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(35.07885, 127.76912)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            하얀비둘기' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>부산광역시 강서구 제도로 726 (강동동)</div>' +
                             '                <div class="jibun ellipsis">(우) 3223-26 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(35.177498, 128.91702)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            학교동물임시보호센터' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>전라남도 함평군 학교면 송산길 84 (학교면) 월산리 806-1</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 월산리 806-1</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(35.04549, 126.538994)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 양주시 남면 감악산로 63-37 </div>' +
                             '                <div class="jibun ellipsis">(우) 410-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
          latlng: new kakao.maps.LatLng(37.870117, 126.98354)
      },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 양주시 남면 감악산로 63-37</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 상수리 410-1</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
      latlng: new kakao.maps.LatLng(37.870483, 126.98364)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 양주시 남면 감악산로 63-37 (남면)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.869892, 126.983116)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 양주시 남면 감악산로 63-37</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.870117, 126.98354)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.87019, 126.9831)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 양주시 남면 감악산로 63-37</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 410-1</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.870117, 126.98354)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 양주시 남면 감악산로 63-37</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.869892, 126.983116)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국동물구조관리협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>서울특별시 송파구</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.870117, 126.98354)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            한국야생동물보호협회' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경기도 안산시 상록구 청곡길 50 (부곡동) 안산시 상록구 부곡동 231-5</div>' +
                             '                <div class="jibun ellipsis">(우) 231-5 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(37.340107, 126.86997)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            함안군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상남도 함안군 가야읍 함안대로 755 </div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(35.293514, 128.39891)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            함양군위탁보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>경상남도 함양군 함양읍 함양남서로 996-76 (함양읍, 농업기술센터)</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(35.50759, 127.74137)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(34.56485, 126.58745)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
    latlng: new kakao.maps.LatLng(35.837467, 127.15665)
    },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(37.56624, 126.71964)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(37.56624, 126.71964)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(37.57119, 126.72842)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(35.241535, 126.610565)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(34.667652, 126.94461)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(36.30387, 129.05489)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(35.591705, 126.873924)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(35.562035, 129.3553)
     },{content: '<div class="wrap">' +
                             '    <div class="info">' +
                             '        <div class="title">' +
                             '            양구군유기동물보호소' +
                             '            <div class="close" title="닫기"></div>' +
                             '        </div>' +
                             '        <div class="body">' +
                             '            <div class="img">' +
                             '                <img src="/image/0618.jpg" width="73" height="70">' +
                             '           </div>' +
                             '            <div class="desc">' +
                             '                <div class="ellipsis" onclick=popup()>강원도 양구군 국토정중앙면 삼팔선로 680 유기동물보호소</div>' +
                             '                <div class="jibun ellipsis">(우) 928-1 (지번) 원리 90</div>' +
                             '                <div><a href="http://localhost:8000/board/messageForm" target="_self" class="link">01024168138</a></div>' +
                             '                <div onclick="popup()">문자 전송하기</div>' +
                             '            </div>' +
                             '        </div>' +
                             '    </div>' +
                             '</div>',
         latlng: new kakao.maps.LatLng(33.455532, 126.58921)
     }

];
<%-- var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";--%>
var imageSrc = "/image/face.png";
for (var i = 0; i < positions.length; i ++) {

    var imageSize = new kakao.maps.Size(35, 35);
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

    var marker = new kakao.maps.Marker({
        map: map,
        position: positions[i].latlng,
        image : markerImage,
        clickable : true
    });

    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content
        });

    var content = positions[i].content;

    var overlay = new kakao.maps.CustomOverlay({
        content: content,
        map: map,
        position: positions[i].latlng
    });

    overlay.setMap(null);

    <%--kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));--%>
    kakao.maps.event.addListener(marker, 'click', makeOverListener2(map, marker, overlay));

}
    <%--kakao.maps.event.addListener(marker, 'click', function() {
            overlay.setMap(map);
    });--%>

    function makeOverListener2(map, marker, overlay) {
        return function() {
            overlay.setMap(map);
            <%--overlay.setMap(map);--%>
        };
    }
    function makeOverListener(map, marker, infowindow) {
        return function() {
            infowindow.open(map, marker);
            <%--overlay.setMap(map);--%>
        };
    }



    function makeOutListener(infowindow) {
        return function() {
            infowindow.close();
        };
    }

    kakao.maps.event.addListener(marker, 'click', function (){
        var position = this.getPosition();
        console.log(position);
    });

</script>


<script src="/js/board.js"></script>
</body>
</html>


