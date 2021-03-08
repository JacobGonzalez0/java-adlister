<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Login" %></title>
    <%@ include file="partials/head.jsp"  %>
</head>
<body>
    
    <div class="container-fluid"> 
    <%@ include file="partials/navbar.jsp" %>
        <form class="form-group m-4" method="POST" action="viewcolor">
            <input class="form-control m-2" type="text" name="color" placeholder="Color"/>
            <input class="btn btn-primary m-2" type="submit">
        </form>
    </div>
</body>
</html>
