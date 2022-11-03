<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-31
  Time: 오후 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<a href="/board/save">글 작성</a>
<a href="/board/">글 목록</a>
<a href="/board/paging">페이징 목록</a>

</body>
</html>
