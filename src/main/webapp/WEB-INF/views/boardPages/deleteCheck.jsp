<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-02
  Time: 오후 1:08
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  %@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <title>Title</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div calss="container" id="delete-Check">
  <input type="text" id="boardPass" class="form=control" placeholder="비밀번호">
  <button class="btn btn-secondary" onclick="passCheck()">확인</button>
</div>

</body>
<script>
  const passCheck = () =>{
    const passInput = document.getElementById("boardPass").value;
    const passDB = '${board.boardPass}';
    const id = '${board.id}'
    if( passInput == passDB){
        location.href = "/board/delete?id=" + id;
    }
    else{
      alert("비밀번호 확인");
    }
  }
</script>
</html>
