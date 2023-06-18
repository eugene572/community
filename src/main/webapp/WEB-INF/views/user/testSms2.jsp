<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>
<head>
    <style>

    </style>
</head>
<body>
<div class="form-group phoneCertifyDiv">

	<div class="phoneNum-formgroup">
		<input type="text" name="memberPhone" class="phoneNum" >
		<input type="button" id="memberPhoneCheck" class="btn memberPhoneBtn active" value="인증번호 전송">
	</div>

	<div class="phoneNum-formgroup" id="phoneCertifyDiv">
		<input type="text" name="memberPhoneCertify" class="phoneNum">
		<input type="button" id="certifyCheck" class="btn memberPhoneBtn" value="인증하기">
	</div>

</div>
</body>
<script src="/js/user.js"></script>
<script type="text/javascript">

    <%--휴대폰번호 인증번호 보내기 버튼 클릭 이벤트--%>
    $('#memberPhoneCheck').click(function(){

    alert('ㅋㄹ2');
    	var to = $('input[name="memberPhone"]').val();
    	$.ajax({
    		url : "/memberPhoneCheck",
    		type : "POST",
    		data : "to=" + to,
    		dataType : "json",
    		success : function(data) {
    			const checkNum = data;

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

        			alert('메세지를 보냈습니다.');

        		},
        		error : function() {
        			alert("에러")
        		}
        	});
        });

</script>