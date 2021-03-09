<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Login" %></title>
    <%@ include file="partials/head.jsp"  %>
</head>
<body>
    
    <div class="container-fluid"> 
        <%@ include file="partials/navbar.jsp" %>

        <h2>Enter your guess 1-3</h2>

        <!--  error box -->
   

        <c:if test="${error != null}">
            <div class="alert alert-danger" role="alert">
                ${error}
            </div>
        </c:if>
            
        

        <form class="form-group m-2" method="POST" action="guess">
            <input class="form-control" type="text" name="guess" placeholder="1-3">
            <input class="btn btn-primary" type="submit">Guess!</input>
        </form>
    </div>
</body>
</html>
