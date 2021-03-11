<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
       ads here!
       <c:forEach var="advert" items="${ads}">
           <div class="ad">
               <h2>${advert.title}</h2>
               <p>${advert.description}</p>
           </div>
       </c:forEach>
    </div>
</body>
</html>
