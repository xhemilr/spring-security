<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Spring Security</title>
</head>
<body>
    <h2> Access Denied</h2>
    <br><br>
    <h2>User <security:authentication property="principal.username"/>
     with role <security:authentication property="principal.authorities"/>
     has no authorization to view this page</h2>
    <br><br>
    <h2>User role: <security:authentication property="principal.authorities"/></h2>
    <br><br>
    <p>
        <a href="${pageContext.request.contextPath}/home"> Go to Homepage</a>
    </p>
    <br><br>


    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Logout"/>

    </form:form>
</body>
</html>