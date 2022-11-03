<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-01
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
<header class="p-3 text-bg-dark">
  <div class="container">
    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
          <use xlink:href="#bootstrap"/>
        </svg>
      </a>

      <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
        <li><a href="/" class="nav-link px-2 text-secondary">Home</a></li>
        <li><a href="/board/save" class="nav-link px-2 text-white">글작성</a></li>
        <li><a href="/board/" class="nav-link px-2 text-white">글목록</a></li>
        <%--                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>--%>
        <%--                <li><a href="#" class="nav-link px-2 text-white">About</a></li>--%>
      </ul>

      <form action="/board/search" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
        <div class="input-group">
          <select name="type" class="form-select">
            <option value="boardTitle" selected>제목</option>
            <option value="boardWriter">작성자</option>
          </select>
          <input type="search" name="q" class="form-control form-control-dark text-bg-dark" placeholder="Search..."
                 aria-label="Search">
          <button class="btn btn-outline-light"><i class="bi bi-search"></i></button>
        </div>
      </form>

      <div class="text-end">
        <c:choose>
          <c:when test="${sessionScope.loginEmail != null}">
            <span>${sessionScope.loginEmail}님</span>
            <button type="button" onclick="logout()" class="btn btn-outline-light me-2">Logout</button>
          </c:when>
          <c:otherwise>
            <button type="button" onclick="login()" class="btn btn-outline-light me-2">Login</button>
            <button type="button" class="btn btn-warning">Sign-up</button>
          </c:otherwise>
        </c:choose>
      </div>
    </div>
  </div>
</header>
</body>
<script>
  const login = () => {
    location.href = "/login";
  }
  const logout = () => {
    location.href = "/logout";
  }
</script>
</html>