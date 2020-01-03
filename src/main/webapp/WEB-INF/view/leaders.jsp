<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Spring Security</title>
</head>
<body>
    <h2> Spring Security Leaders Home Page</h2>
    <br><br>
    <h2>User <security:authentication property="principal.username"/> logged in successfully</h2>
    <br><br>
    <h2>User role: <security:authentication property="principal.authorities"/></h2>
    <br><br>
   <h2> Leaders Home pages</h2><br><br>
   This page is restricted only for leaders
    <br><br>
    <a href="${pageContext.request.contextPath}/home">Back to Home page</a>
<br><br>
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Logout"/>

    </form:form>

</body>
</html>