<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../layout/header.jsp"%>
</head>
<body>

<div class="container">

	<div class="card m-2">
		<div class="card-body">
		<table class="table table-hover ">
		    <thead>
		        <tr>
		            <th width="10%" style="text-align:center;">번호</th>
                    <th width="70%" style="text-align:center;">제목</th>
                    <th width="20%" style="text-align:center;">작성자</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach var="board" items="${boards.content}">
		        <tr>
		            <td style="text-align:center;">${board.id}</td>
		            <td><a style="text-decoration: none; color: black;" href="/board/${board.id}">${board.title}</td>
		            <td style="text-align:center;">${board.user.username}</td>
		        </tr>
			    <%--<h4 class="card-title"><a style="text-decoration: none; color: black;"href="/board/${board.id}">${board.title}</h4>--%>
                </c:forEach>
            </tbody>
        </table>
		</div>
	</div>


<ul class="pagination justify-content-center">
  <c:choose>
  	<c:when test="${boards.first}">
  		<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}"><</a></li>
  	</c:when>
  	<c:otherwise>
  		<li class="page-item"><a class="page-link" href="?page=${boards.number-1}"><</a></li>
  	</c:otherwise>
  </c:choose>

    <c:choose>
  	<c:when test="${boards.last}">
  		<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">></a></li>
  	</c:when>
  	<c:otherwise>
  		<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">></a></li>
  	</c:otherwise>
  </c:choose>

</ul>


</div>
</body>



