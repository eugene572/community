<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="/js/slide.css">
    <link rel="stylesheet" href="/js/style.css">
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
<section class="intro">
    <div class="main_body">
        <i class ="fab fa-css3-alt"></i>
        <h1><img height="20px" src="/image/m1.png"></h1>
        <p>반려동물 1,500만 시대. 누구에게나 사랑받는 반려동물이지만, 그 수의 증가에 따라 보호가 필요한 유기 동물도 증가하고 있습니다.</p>
    </div>
    <div class="main_body">
        <i class ="fab fa-css3-alt"></i>
        <h1><img height="20px" src="/image/m2.png"></h1>
        <p>정부는 매년 유기 동물 지원 사업을 시행하지만 그 증가율은 각 시 보호소에서도 감당할 수 없을 정도이고, 그마저도 새로운 가족을 찾지 못해, 15일이 지나면 안락사가 진행됩니다.</p>
    </div>
    <div class="main_body">
        <i class ="fab fa-css3-alt"></i>
        <h1><img height="20px" src="/image/m3.png"></h1>
        <p>동물 사랑 센터에서는 적극적인 노력과 고민 끝에, 유럽펫 보호소를 운영하여 동물들을 보호하고 새로운 보호자를 만날 수 있도록 최선을 다하고 있습니다.</p>
    </div>
</section>
<section class="service">
    <div class="container">
        <div class="img">
            <img src="/image/main1.jpg" alt="">
        </div>
        <div class="text">
            <h1>안락사 없는 보호소 운영</h1>
            <p>안락사 없는 유기동물보호소를 함께 운영하며, 체계적인 입양 시스템을 통하여, 높은 재입양률과 유기동물 감소에 노력을 기울이고 있습니다.</p>
        </div>
    </div>
</section>
<section class="service2">
    <div class="container2">
        <div class="img">
            <img src="/image/main3.jpg" alt="">
        </div>
        <div class="text">
            <h1>정식 반려동물 계약서만을 사용</h1>
            <p>허가받지 않은 임의 계약서가 아닌 농림축산부를 통해 제공받은 정식 계약서를 통해 안전하고 체계적인 계약서를 작성합니다.</p>
        </div>
    </div>
</section>

    <%@ include file="../layout/footer.jsp"%>


        <script type="text/javascript" src="/js/slide.js" ></script>

</body>
</html>
