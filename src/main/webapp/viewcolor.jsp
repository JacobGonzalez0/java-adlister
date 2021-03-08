<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Login" %></title>
    <%@ include file="partials/head.jsp"  %>
</head>
<body>
    
    <div class="container-fluid"> 
    <%@ include file="partials/navbar.jsp" %>
        <% if(request.getMethod().equalsIgnoreCase("post") &&
              request.getParameter("color") != null){ %>
                <style> body{
                    background-color: ${color}
                } </style>
                <h1> Your color is ${color} </h1>
        <% }%>
    </div>
</body>
</html>
