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
    <title><%= "some title" %></title>
</head>
<body>

    <form method="POST" action="login.jsp">
        <input type="text" name="username" placeholder="Username"/>
        <input type="password" name="password" placeholder="Password"/>
        <input type="submit">
    </form>
</body>
</html>
