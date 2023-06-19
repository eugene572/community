<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header2.jsp"%>
<head>
<style>
button::placeholder {
  color: blue;
}
</style>
</head>
<body>

<div class="container" >
<form >
		<div class="form-group" style="text-align: center;">
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="text" class="form-control" placeholder="아이디" id="username">
		</div>

		<div class="form-group" style="text-align: center;">
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="password" class="form-control" placeholder="비밀번호" id="password">
		</div>

		<div class="form-group" style="text-align: center;">
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="email" class="form-control" placeholder="이메일" id="email">
		</div>
		<div>
		<button class="btn btn-dark" style="display:block; margin: 0 auto; width:300px; height:50px;" onclick="popup();">휴대폰 인증</button>
		</div>
<br/>
	</form>

	<div class="checkbox_group">
	<input type="checkbox" id="check_all" style="margin-left: 403px; width:20px; height:20px;">
	<label for="check_all">전체 동의</label>
	<br>
	<input type="checkbox" id="check_1" class="normal" style="margin-left: 403px; width:20px; height:20px;">
    <label for="check_1">[필수] 개인정보 처리방침 동의</label>
    <br>
    <input type="checkbox" id="check_2" class="normal" style="margin-left: 403px; width:20px; height:20px;">
    <label for="check_2">[필수] 서비스 이용약관 동의</label>
    <br>
    <input type="checkbox" id="check_3" class="normal" style="margin-left: 403px; width:20px; height:20px;">
    <label for="check_3">[선택] 마케팅 수신 동의</label>
    </div>
<br/>
	<button id="btn-save" class="btn btn-dark" style="display:block; margin: 0 auto; width:300px; height:50px;">회원가입</button>

</div>

</body>
<script src="/js/user.js"></script>
<script type="text/javascript">

    function popup(){
      let options = "toolbar=no,scrollbars=no,resizable=yes,status=no,menubar=no,width=600, height=500, top=0,left=0";

      window.open("http://localhost:8000/auth/testSms2","_blank", options);
    }

    <%--휴대폰번호 인증번호 보내기 버튼 클릭 이벤트--%>
    $('#memberPhoneCheck').click(function(){

    	var to = $('input[name="memberPhone"]').val();
    	$.ajax({
    		url : "/memberPhoneCheck",
    		type : "POST",
    		data : "to=" + to,
    		dataType : "json",
    		success : function(data) {
    			const checkNum = data;
    			alert('checkNum:'+ checkNum);
    			alert('메세지를 보냈습니다.');

                <%--인증하기 버튼 클릭 이벤트--%>
    			$('#certifyCheck').click(function(){
    				const userNum = $('input[name="memberPhoneCertify"]').val();
    				if(checkNum == userNum){
    					alert('인증 성공하였습니다.');
    				}else {
    					alert('인증 실패하였습니다. 다시 입력해주세요.');
    				}
    			});

    		},
    		error:function(request,status,error){
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                   }
    	});
    });

    <%--휴대폰번호 인증번호 보내기 버튼 클릭 이벤트--%>
        $('#memberPhoneCheck2').click(function(){

        	var to = $('input[name="memberPhone2"]').val();
        	var text = $('input[name="message"]').val();
        	var allData = { "to": to, "text": text};

        	$.ajax({
        		url : "/memberPhoneCheck2",
        		type : "POST",
        		data : allData ,
        		dataType : "json",
        		success : function(data) {
        			const checkNum = data;
        			alert('checkNum:'+ checkNum);
        			alert('메세지를 보냈습니다.');

        		},
        		error : function() {
        			alert("에러")
        		}
        	});
        });

$(".checkbox_group").on("click", "#check_all", function () {
    $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
});

$(".checkbox_group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox_group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);
});

$('#btn-save').on("click", function() {
    var checked = $('#check_1').is(':checked');
    var checked2 = $('#check_2').is(':checked');
    if(!checked ) {
        event.preventDefault();
        alert("이용약관을 동의해주세요.");
    }
    else if(!checked2){
        event.preventDefault();
        alert("이용약관을 동의해주세요.");
    }
});


</script>


