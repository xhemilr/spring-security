<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Spring Security</title>
</head>
<body>
    <h2> Spring Security Home Page</h2>
    <br><br>
    <h2>User <security:authentication property="principal.username"/> logged in successfully</h2>
    <br><br>
    <h2>User role: <security:authentication property="principal.authorities"/></h2>
    <br><br>
    <security:authorize access="hasRole('MANAGER')">
    <p>
        <a href="${pageContext.request.contextPath}/leaders"> Leadership meeting</a>(Only for Manager peeps)
    </p>
    </security:authorize>
    <br><br>

   <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/system"> Administrators meeting</a>(Only for Administrators peeps)
        </p>
    </security:authorize>
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Logout"/>

    </form:form>
</body>
</html>