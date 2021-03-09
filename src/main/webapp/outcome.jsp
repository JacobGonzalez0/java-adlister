<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title><%= "Login" %></title>
    <%@ include file="partials/head.jsp"  %>
</head>
<body>
    
    <div class="container-fluid"> 
        <%@ include file="partials/navbar.jsp" %>
        <c:if test="${outcome == null}">
            <h1>Go back and guess!</h1>
        </c:if>
        <c:if test="${outcome == true}">
            <h1>You got it!</h1>
        </c:if>
        <c:if test="${outcome == false}">
            <h1>Try again</h1>
        </c:if>
        
        
    </div>
</body>
</html>
