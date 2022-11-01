<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-31
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>boardList</title>
</head>
<body>

<div class="container">
    <table class="table talbe-striped table-hover">
        <tr>

            <th>글 쓴이</th>
            <th>제목</th>
            <th>작성시간</th>
            <th>조회수</th>
            <th>글 삭제</th>
            <th>글 수정</th>

        </tr>
        <c:forEach items="${boardList}" var="board">
            <tr>

                <td>${board.boardWriter}</td>
                <td><a href="/board?boardId=${board.boardId}">${board.boardTitle}</a></td>
                <td>${board.boardCreateDate}</td>
                <td>${board.boardHits}</td>
                <td><button class ="btn btn-danger" onclick="deleteBoard(${board.boardId})">삭제</button></td>
                <td><button class ="btn btn-danger" onclick="boardUpdate(${board.boardId})">수정</button></td>

            </tr>
        </c:forEach>
    </table>
    <button class="btn btn-danger" onclick="backHome()">처음으로</button>

</div>

</body>
<script>
let deleteBoard = (boardId) =>{

    location.href="/board/check?boardId="+boardId;

}
const backHome = () =>{
    location.href="/";
}
let boardUpdate = (boardId) => {
    location.href="/board/update?boardId="+boardId;
}


</script>

</html>
