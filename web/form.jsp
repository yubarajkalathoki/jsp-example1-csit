<%-- 
    Document   : form
    Created on : May 23, 2017, 7:36:47 AM
    Author     : Yubaraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="formSubmit" action="display.jsp" method="POST">
            Username: <input type="text" name="username" value="" size="20" />
            Password: <input type="password" name="password" value="" size="20" />
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
