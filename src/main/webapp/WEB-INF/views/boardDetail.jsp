<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-31
  Time: 오후 4:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972"></script>
    <title>detail</title>
</head>
<body>
<div class="container">
    <table class="table talbe-striped table-hover">
        <tr>
            <th>id</th>
            <th>글 쓴이</th>
            <th>제목</th>
            <th>내용</th>
            <th>작성시간</th>
            <th>조회수</th>
            <th>삭제</th>
        </tr>
        <tr>

        <td>${result.boardId} </td>
        <td>${result.boardWriter}</td>
        <td>${result.boardTitle}</td>
        <td>${result.boardContents}</td>
        <td>${result.boardCreateDate}</td>
        <td>${result.boardHits}</td>


        </tr>
        </table>

        <button class="btn btn-danger" onclick="backHome()">처음으로</button>
        <button class="btn btn-danger" onclick="backSpace()">목록</button>
</div>

</body>
<script>
    const backHome = () =>{
        location.href="/";
    }
    const backSpace = () =>{
        location.href="/board/";
    }




</script>
</html>
