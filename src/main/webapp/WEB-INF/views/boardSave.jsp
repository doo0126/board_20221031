<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-31
  Time: 오후 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글작성</title>
</head>
<body>

<form action="/board/save"method="post"></form>
<input type="text" name="boardWriter"placehoder = "글쓴이">
<input type = "text" name="boardPass"placehoder ="비밀번호">
<input type = "text" name="boardTitle"placehoder ="제목">
<input type ="text" name="boardContents"placehoder=내용">
<input type="submit" value = "확인">


</body>
</html>
