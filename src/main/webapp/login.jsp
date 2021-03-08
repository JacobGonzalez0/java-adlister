<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //check if the request is a POST request
    if (request.getMethod().equalsIgnoreCase("post")) {
        //checks the parameters to see if they match the password
    	if (request.getParameter("username").equalsIgnoreCase("admin") && 
            request.getParameter("password").equals("password")) {
            //finally redirects to the profile page if true
    		response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title><%= "Login" %></title>
    <%@ include file="partials/head.jsp"  %>
</head>
<body>
    
    <div class="container-fluid"> 
    <%@ include file="partials/navbar.jsp" %>
        <form class="form-group m-4" method="POST" action="login.jsp">
            <input class="form-control m-2" type="text" name="username" placeholder="Username"/>
            <input class="form-control m-2" type="password" name="password" placeholder="Password"/>
            <input class="btn btn-primary m-2" type="submit">
        </form>
    </div>
</body>
</html>
