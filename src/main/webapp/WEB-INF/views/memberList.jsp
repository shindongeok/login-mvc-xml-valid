<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>

<head>
    <title>게시판 메인 페이지입니다.</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<%--    <div class="card-body">--%>
        <h3 class="card-title">회원리스트</h3>
        <table class="table table-dark table-striped">
            <thead>
            <tr>
                <th class="text-center d-md-table-cell">아이디</th>
                <th class="text-center d-md-table-cell">비빌번호</th>
                <th class="text-center d-md-table-cell">이름</th>
                <th class="text-center d-md-table-cell">성별</th>
                <th class="text-center d-md-table-cell">Email</th>
                <th class="text-center d-md-table-cell">생년월일</th>
                <th class="text-center d-md-table-cell">우편번호</th>
                <th class="text-center d-md-table-cell">집주소</th>
                <th class="text-center d-md-table-cell">취미</th>
                <th class="text-center d-md-table-cell">직업</th>
            </tr>
            <tbody>
            <c:forEach var="obj" items="${list}">
            <tr>
                <td class="text-center d-md-table-cell">${obj.id}</td>
                <td class="text-center d-md-table-cell">${obj.pwd1}</td>
                <td class="text-center d-md-table-cell">${obj.name}</td>
                <td class="text-center d-md-table-cell">${obj.gender}</td>
                <td class="text-center d-md-table-cell">${obj.email}</td>
                <td class="text-center d-md-table-cell">${obj.birth}</td>
                <td class="text-center d-md-table-cell">${obj.zipcode}</td>
                <td class="text-center d-md-table-cell">${obj.address}</td>
                <td class="text-center d-md-table-cell">${obj.hobby}</td>
                <td class="text-center d-md-table-cell">${obj.job}</td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>