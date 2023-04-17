<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">

<div id="map" style="width:500px;height:400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f77d7afbd9a21da9048880826e1436b8"></script>

<script>
    var container = document.getElementById('map');
    var options = {
    	center: new kakao.maps.LatLng(33.450701, 126.570667),
    	level: 3
    };
    var map = new kakao.maps.Map(container, options);
</script>

</div>
<script src="/js/board.js"></script>






