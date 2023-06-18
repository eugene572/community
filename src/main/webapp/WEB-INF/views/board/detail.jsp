<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%!

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/mydb3?serverTimezone=Asia/Seoul&useSSL=false&useUnicode=true&characterEncoding=utf8";
	String uid = "root";
	String pass = "1234";

%>

<div class="container">
	<button class="btn btn-dark float-right" onclick="history.back()" style="border:none; background-color:transparent;"><img height="15px" src="/image/menu.png" alt=""></button>

	<c:if test="${board.user.id == principal.user.id}">
		<a href="/board/${board.id}/updateForm" class="btn btn-dark float-right" style="border:none; background-color:transparent;"><img height="15px" src="/image/edit-button.png" alt=""></a>
		<button id="btn-delete" class="btn btn-dark float-right" style="border:none; background-color:transparent;"><img height="15px" src="/image/bin.png" alt=""></button>
	</c:if>
	<br /> <br />
	<div>
	  작성자
	  <button type="submit" value="test" style="border:none; background-color:transparent;" onclick="showPopup();">
	  <img height="18px" src="/image/black-back-closed-envelope-shape.png" alt="">
                      </button>
                      <p class="arrow_box">쪽지 보내기</p>
                      <form action="messageMain">
           <span>${board.user.username} </span>

            <%--<button type="submit" value="test"/ style="border:none; background-color:transparent;" onclick="showPopup();">
            <img height="15px" src="/image/black-back-closed-envelope-shape.png" alt="">
            </button>
            <p class="arrow_box" ">쪽지 보내기</p>--%>

            <input type="hidden" name="test" value ="${board.user.username}"/>
	        </form>

		<span id="id" style="visibility:hidden">${board.id} </span>

	</div>
	<div>
		<h3>${board.title}</h3>
	</div>
<hr/>
	<div>
		<div>${board.content}</div>
	</div>
	<br />
		<br /><br />

	<div class="container" style="text-align: center;">

<%
    String var = "1";
    int var2 = 0;

    try {
        String sql = " select userId, noteId, likeYn from liketb where userId = 'hi' ";
        Class.forName("com.mysql.cj.jdbc.Driver");

        conn = DriverManager.getConnection(url, uid, pass);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);

        while (rs.next()) {
            String likeYn = rs.getString("likeYn");

            if(likeYn.equals(var)) { var2 = 0; }
            else{ var2 = 1; }

        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null)
                rs.close();
            if (stmt != null)
                stmt.close();
            if (conn != null)
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    if(var2 == 0) { %>

	    <img id="image" style="cursor:pointer" onclick="changeImage()" height=35px;
	    src="/image/heart1.png" alt="">
	<% } else if(var2 == 1){ %>
	    <img id="image" style="cursor:pointer" onclick="changeImage()" height=35px;
	    src="/image/heart2.png" alt="">
    <%
    } %>


	</div>
	<hr />

<div>
    <div class="sns" style="height:40px;">
        <div class="facebook" style=" float:right; ">
        <a href="#n" onclick="fn_sendFB('facebook');return false;" class="facebook" target="_self" title="페이스북 새창열림">
        <img style="cursor:pointer" height="40px" src="/image/facebook.png" alt=""></a>
        </div>
        <div class="twitter" style="float:right; ">
        <a href="#n" onclick="fn_sendFB('twitter');return false;" class="twitter" target="_self" title="트위터 새창열림">
        <img style="cursor:pointer" height="40px" src="/image/twitter.png" alt=""></a>
        </div>
        <div class="band" style="float:right;">
        <a href="#n" onclick="fn_sendFB('band');return false;" class="band" target="_self" title="네이버밴드 새창열림">
        <img style="cursor:pointer" height="40px" src="/image/band.png" alt=""></a>
        </div>
    	<div class="kakaotalk" style="float:right;">
        <a href="#n" id="btnKakao" onclick="fn_sendFB('kakaotalk'); return false;" class="kakaotalk" target="_self" title="카카오톡 새창열림">
        <img style="cursor:pointer" height="40px" src="/image/kakao1.png" alt=""></a>
        </div>
    </div>
</div>
<hr/>

	<div class="card">
	    <form>
	        <input type="hidden" id="userId" value="${principal.user.id}" />
		    <input type="hidden" id="boardId" value="${board.id}" />
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-dark float-right">등록</button>
			</div>
		</form>
	</div>
	<br />
	<div class="card">
		<div class="card-header">댓글</div>
		<ul id="reply-box" class="list-group">
			<c:forEach var="reply" items="${board.replys}">
			
				<li id="reply-${reply.id}" class="list-group-item d-flex justify-content-between">
                    <div>${reply.content}</div>
                	<div class="d-flex">
                		<div>작성자 : ${reply.user.username} &nbsp;</div>
                		<c:if test="${reply.user.id eq principal.user.id}">
                			<button onClick="index.replyDelete(${board.id}, ${reply.id})" class="badge" style="border:none; background-color:transparent;">
                			<img height="15px" src="/image/free-icon-clear-1632708.png" alt=""></button>
                		</c:if>

                	</div>
                </li>
				
			</c:forEach>
		</ul>
	</div>
</div>

<script src="/js/board.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.js" ></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>

function fn_sendFB(sns) {
    var thisUrl = document.URL;
    var snsTitle = "${board.title}";
    if( sns == 'facebook' ) {
        var url = "http://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(thisUrl);
        window.open(url, "", "width=486, height=286");
    }
    else if( sns == 'twitter' ) {
        var url = "http://twitter.com/share?url="+encodeURIComponent(thisUrl)+"&text="+encodeURIComponent(snsTitle);
        window.open(url, "tweetPop", "width=486, height=286,scrollbars=yes");
    }
    else if( sns == 'band' ) {
        var url = "http://www.band.us/plugin/share?body="+encodeURIComponent(snsTitle)+"&route="+encodeURIComponent(thisUrl);
        window.open(url, "shareBand", "width=400, height=500, resizable=yes");
    }
	if( sns == 'kakaotalk' ) {

		Kakao.init('eaf0243fc8d72217528a90ae433c26f1');
		Kakao.Link.createDefaultButton({
			container: '#btnKakao',
			objectType: 'feed',
			content: {
			title: "${board.title}",
			description: "${board.content}",
			imageUrl: thisUrl,
			link: {
				mobileWebUrl: thisUrl,
				webUrl: thisUrl
			}
			}
		});
	}
}

    $var = 0;
    if($var == 0) var2 = 0;
    else if($var == 1) var2 = 1;

    function changeImage() {
        if ( var2 == 0 ) {
            var2 = 1;
            document.getElementById('image').src = "/image/heart1.png";
            swal('','좋아요를 눌렀습니다.', 'success');
        }
        else if(var2 == 1){
            var2 = 0;
            document.getElementById('image').src = "/image/heart2.png";
            swal('', '좋아요를 취소했습니다.', 'error');
        }
    }
    function showPopup(){
        window.open("messageMain?test=${board.user.username}","팝업 테스트","width=600, height=900, top=100, left=50");
    }

</script>



