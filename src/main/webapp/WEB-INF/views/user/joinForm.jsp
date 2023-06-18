<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<style>
button::placeholder {
  color: blue;
}
</style>
<div class="container" >
	<form >
		<div class="form-group" style="text-align: center;">
			<%--<label for="username">아이디</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="text" class="form-control" placeholder="아이디" id="username">
		</div>
		
		<div class="form-group" style="text-align: center;">
			<%--<label for="password">비밀번호</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="password" class="form-control" placeholder="비밀번호" id="password">
		</div>
		
		<div class="form-group" style="text-align: center;">
			<%--<label for="email">이메일</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="email" class="form-control" placeholder="이메일" id="email">
		</div>

        <div class="form-group" style="text-align: center;">
            <%--<input th:if="${memberPhone != null}" type="text" name="memberPhone" class="phoneNum" readonly th:value="${memberPhone}">--%>
            <input type="text" style="display:block; margin: 0 auto; width:300px; height:50px;" placeholder="휴대폰 번호" name="memberPhone" class="phoneNum" >
            <input type="button" id="memberPhoneCheck" style="margin-left: 180px; border-color: blue; background-color: white; color:blue; " class="btn memberPhoneBtn active" value="인증번호 전송">
        </div>
        <div class="form-group" style="text-align: center;" id="phoneCertifyDiv">
            <input type="text" style="margin-left: 203px; margin: 0 auto; width:150px; height:38px;" name="memberPhoneCertify" placeholder="인증번호" class="phoneNum">
            <input type="button" id="certifyCheck" style=" border:none; width:150px; background-color: #ffe100; " class="btn memberPhoneBtn" value="인증하기">
        </div>

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

	<button id="btn-save" class="btn btn-dark" style="display:block; margin: 0 auto; width:300px; height:50px;">회원가입</button>

</div>

<script src="/js/user.js"></script>
<script>

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



