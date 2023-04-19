<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="/js/slide.css">
</head>
<body>
    <div class="slide slide_wrap">
        <div class="slide_item item1"><img src="/image/1.jpg" class="pet-img1"></div>
        <div class="slide_item item2"><img src="/image/2.jpg" class="pet-img2"></div>
        <div class="slide_item item3"><img src="/image/3.jpg" class="pet-img3"></div>
        <div class="slide_item item4"><img src="/image/4.jpg" class="pet-img4"></div>
        <div class="slide_item item5"><img src="/image/5.jpg" class="pet-img5"></div>
        <div class="slide_prev_button slide_button"><</div>
        <div class="slide_next_button slide_button">></div>
    <ul class="slide_pagination"></ul>
    </div>
    <div class="main_body">
    바디입니다.
    </div>
    <div class="main_footer">
    푸터입니다.
    </div>

        <script type="text/javascript" src="/js/slide.js" ></script>

</body>
</html>
