<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<head>
    <style>

    #memberPhoneCheck2{
        width: 130px;
        height: 55px;
        background-color: gold;
        border-top: none;
        border-left: none;
        border-right: none;
        text-align:center;
    }
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
        }

        div {
          position: relative;
          width: 300px;
          margin-left: 50px;
          margin-top: 100px;
        }

        input {
          font-size: 15px;
          color: #222222;
          width: 300px;
          border: none;
          border-bottom: solid #aaaaaa 1px;
          padding-bottom: 10px;
          padding-left: 10px;
          position: relative;
          background: none;
          z-index: 5;
        }

        input::placeholder { color: #aaaaaa; }
        input:focus { outline: none; }

        span {
          display: block;
          position: absolute;
          bottom: 0;
          left: 0%;  /* right로만 바꿔주면 오 - 왼 */
          background-color: #666;
          width: 0;
          height: 2px;
          border-radius: 2px;
          transition: 0.5s;
        }

        label {
          position: absolute;
          color: #aaa;
          left: 10px;
          font-size: 20px;
          bottom: 8px;
          transition: all .2s;
        }

        input:focus ~ label, input:valid ~ label {
          font-size: 16px;
          bottom: 40px;
          color: #666;
          font-weight: bold;
        }

        input:focus ~ span, input:valid ~ span {
          width: 100%;
        }
    </style>
</head>
<body>
<div class="form-group phoneCertifyDiv">
	<%--<label class="inputTitle">휴대폰 번호</label><br>
	<div class="phoneNum-formgroup">
		<input th:if="${memberPhone != null}" type="text" name="memberPhone" class="phoneNum" readonly th:value="${memberPhone}">
		<input type="text" name="memberPhone" class="phoneNum" >
		<input type="button" id="memberPhoneCheck" class="btn memberPhoneBtn active" value="인증번호 전송">
	</div>
	--%>

	<div class="phoneNum-formgroup">
		<%--<input th:if="${memberPhone != null}" type="text" name="memberPhone" class="phoneNum" readonly th:value="${memberPhone}">--%>
		<div>
		<input type="text" required name="memberPhone2" class="phoneNum2" value="01024168138">
		<label>보내는 사람</label>
		<span></span>
        </div>

        <div>
		<input type="text" required name="message" class="messageNum">
		<label>내용</label>
		<span></span>
        </div>
        <br/>
        <br/>
        <br/>
		<input type="button" style="margin-left:200px;" id="memberPhoneCheck2" class="btn memberPhoneBtn active" value="메세지 전송">
	</div>
<br/>
<br/>
	<%--
	<div class="phoneNum-formgroup" id="phoneCertifyDiv">
		<input type="text" name="memberPhoneCertify" class="phoneNum">
		<input type="button" id="certifyCheck" class="btn memberPhoneBtn" value="인증하기">
	</div>
	--%>
</div>
</body>
<script type="text/javascript">

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