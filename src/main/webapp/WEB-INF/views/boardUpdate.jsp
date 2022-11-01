<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-01
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>boardUpdate</title>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="update-form">
<form action="/board/update" method="post" name="updateForm">
    <input type="text" value="updateTitle" placeholder="수정제목">
    <input type="text" value="updateContents"placeholder="수정 내용" >
    <input type="text" value="pw" id="pw" placeholder="비밀번호">
    <input type="submit" onclick="passCheck()" value="확인">
</form>
</div>
</body>
<script>
    const passCheck = () =>{
        let pwDB = "";
        pwDB = ${boardDTO.boardPass}
        const pw = document.getElementById("pw").value;
        console.log("디비"+pwDB+"pw"+pw);
        if(pw == pwDB){
            alert("완료");
            document.updateForm.submit();

        }
        else{
            alert("비밀번호 확인")
        }


    }
</script>
</html>
