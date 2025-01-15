<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script>
        function doubleCheck(){
            let memberID=$("#id").val();
            $.ajax({
                url:"${root}/member/memberDoubleCheck",
                type:"get",
                data:{"memberID":memberID},
                success:function(result){
                    if(result==1){
                        $("#idcheck").html('사용할 수 있는 아이디이다');
                    }
                    else{
                        $("#idcheck").html('사용할 수 없는 아이디이다');
                    }
                },
                error: function(request,error){
                    console.log(request.responseText);
                    console.log(error);
                }
            })
        }
    </script>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <h2 class="text-center mb-4">회원가입</h2>
            <form action="${root}/member/join_pro" method="post" >
                <!-- 아이디 -->
                <div class="mb-3 d-flex align-items-end">
                    <div class="flex-grow-1 me-2">
                        <label for="id" class="form-label">아이디
                        <input type="text" class="form-control" id="id" name="id" maxlength="20" required/></label>
                    </div>
                    <p id="idcheck"></p>
                    <button type="button" class="btn btn-outline-primary" onclick="doubleCheck()">중복 확인</button>
                </div>
                <!-- 비밀번호 -->
                <div class="mb-3">
                    <label for="pwd1" class="form-label">비밀번호
                    <input type="password" class="form-control" id="pwd1" name="pwd1" maxlength="20" required /></label>
                </div>
                <!-- 비밀번호 확인 -->
                <div class="mb-3">
                    <label for="pwd2" class="form-label">비밀번호 확인</label>
                    <input type="password" class="form-control" id="pwd2" name="pwd2" maxlength="20" required>
                </div>
                <!-- 이름 -->
                <div class="mb-3">
                    <label for="name" class="form-label">이름</label>
                    <input type="text" class="form-control" id="name" name="name" maxlength="20" required>
                </div>
                <!-- 성별 -->
                <div class="mb-3">
                    <div>
                        <label class="form-label">성별 : </label>
                        <input type="radio" id="male" name="gender" value="남" required>
                        <label for="male">남성</label>
                        <input type="radio" id="female" name="gender" value="여" required>
                        <label for="female">여성</label>
                    </div>
                </div>
                <!-- 이메일 -->
                <div class="mb-3">
                    <label for="email" class="form-label">이메일</label>
                    <input type="email" class="form-control" id="email" name="email" maxlength="50" required>
                </div>
                <!-- 생년월일 -->
                <div class="mb-3">
                    <label for="birth" class="form-label">생년월일</label>
                    <input type="date" class="form-control" id="birth" name="birth" required>
                </div>
                <!-- 우편번호 -->
                <div class="mb-3">
                    <label for="zipcode" class="form-label">우편번호</label>
                    <input type="text" class="form-control" id="zipcode" name="zipcode" maxlength="100" required>
                </div>
                <!-- 주소 -->
                <div class="mb-3">
                    <label for="address" class="form-label">주소</label>
                    <input type="text" class="form-control" id="address" name="address" maxlength="50" required>
                </div>
                <!-- 취미 -->
                <div class="mb-3">
                    <label class="form-label">취미</label>
                    <div>
                        <input type="checkbox" id="hobby1" name="hobby" value="운동">
                        <label for="hobby1">운동</label>
                        <input type="checkbox" id="hobby2" name="hobby" value="독서">
                        <label for="hobby2">독서</label>
                        <input type="checkbox" id="hobby3" name="hobby" value="영화">
                        <label for="hobby3">영화</label>
                        <input type="checkbox" id="hobby4" name="hobby" value="음악">
                        <label for="hobby4">음악</label>
                        <input type="checkbox" id="hobby5" name="hobby" value="여행">
                        <label for="hobby5">여행</label>
                    </div>
                </div>
                <!-- 직업 -->
                <div class="mb-3">
                    <label for="job" class="form-label">직업</label>
                    <select class="form-select" id="job" name="job" required>
                        <option value="">직업 선택</option>
                        <option value="학생">학생</option>
                        <option value="직장인">직장인</option>
                        <option value="기타">기타</option>
                    </select>
                </div>
                <!-- 버튼 -->
                <div class="d-flex gap-2 justify-content-end">
                    <button type="submit" class="btn btn-primary">회원가입</button>
                    <button type="reset" class="btn btn-secondary">다시 쓰기</button>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>
