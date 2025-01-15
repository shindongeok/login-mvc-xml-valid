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
                    if(result == 1){
                        $("#idcheck").html('사용할 수 있는 아이디이다').css("color", "green");
                    } else {
                        $("#idcheck").html('사용할 수 없는 아이디이다').css("color", "red");
                    }
                },
                error: function(request,error){
                    console.log(request.responseText);
                    console.log(error);
                }
            })
        }
    </script>

    <style>
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f8f9fa; /* 배경색 */
        }
        .login-container {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>


<div class="login-container">
    <h2 class="text-center mb-4">회원가입</h2>
    <form action="${root}/member/join_pro" method="post">
        <!-- 아이디 입력 -->
        <div class="mb-3">
            <label for="id" class="form-label">아이디
                <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요" required>
            </label>
            <button type="button" class="btn btn-warning" onclick="doubleCheck()">중복 확인</button>
            <p id="idcheck"></p>
        </div>
        <p></p>

        <!-- 비밀번호 -->
        <div class="mb-3">
            <label for="pwd1" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="pwd1" name="pwd1" placeholder="비밀번호를 입력하세요" required>
        </div>
        <p></p>

        <!-- 비밀번호 확인 -->
        <div class="mb-3">
            <label for="pwd2" class="form-label">비밀번호 확인</label>
            <input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="비밀번호를 입력하세요" required>
        </div>
        <p></p>

        <!-- 이름 -->
        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="password" class="form-control" id="name" name="name" placeholder="이름을 입력하세요" required>
        </div>
        <p></p>

        <!-- 성별 -->
        <div class="mb-3">
            <div>
                <label class="form-label">성별 :
                <p></p>
                </label>
                <input type="radio" id="male" name="gender" value="남" required>
                <label for="male">남성</label>
                <input type="radio" id="female" name="gender" value="여" required>
                <label for="female">여성</label>
            </div>
        </div>
        <p></p>


        <!-- 이메일 -->
        <div class="mb-3">
            <label for="email" class="form-label">이메일
                <input type="email" class="form-control" id="email" name="email" maxlength="50" required>
            </label>
        </div>
        <p></p>

        <!-- 생년월일 -->
        <div class="mb-3">
            <label for="birth" class="form-label">생년월일
                <input type="date" class="form-control" id="birth" name="birth" required>
            </label>
        </div>
        <p></p>

        <!-- 우편번호 -->
        <div class="mb-3">
            <label for="zipcode" class="form-label">우편번호
                <input type="text" class="form-control" id="zipcode" name="zipcode" maxlength="100" required>
            </label>
            <button type="button" class="btn btn-warning" onclick="zipOpen()">주소찾기</button>
        </div>
        <p></p>

        <!-- 주소 -->
        <div class="mb-3">
            <label for="address" class="form-label">주소
                <input type="text" class="form-control" id="address" name="address" maxlength="50" required>
            </label>
        </div>
        <p></p>

        <!-- 취미 -->
        <div class="mb-3">
            <label class="form-label">취미
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
            </label>
        </div>
        <p></p>

        <!-- 직업 -->
        <div class="mb-3">
            <label for="job" class="form-label">직업

                <select class="form-select" id="job" name="job" required>
                    <option value="">직업 선택</option>
                    <option value="학생">학생</option>
                    <option value="직장인">직장인</option>
                    <option value="기타">기타</option>
                </select>
            </label>
        </div>
        <p></p>
        <p></p>
        <p></p>
        <p></p>


        <div class="d-flex justify-content-end gap-2">
            <button type="submit" class="btn btn-success w-100">회원가입</button>
            <button type="reset" class="btn btn-danger">다시 쓰기</button>
        </div>

    </form>

</div>


</body>
</html>
