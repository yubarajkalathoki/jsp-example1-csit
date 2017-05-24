<%-- 
    Document   : display
    Created on : May 23, 2017, 7:24:11 AM
    Author     : Yubaraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String username;
            String password;
        %>
        
        
We just finished declaration <br/>



        <%
            username = request.getParameter("username");
            password = request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csit", "root", "");
            String sql = "insert into user (username,password) values ('"+username+"', '"+password+"')";
            out.println("Query: "+sql);
            Statement stat = cn.createStatement();
            stat.executeUpdate(sql);
            out.println("Inserted!");
        %>

        We just manipulate the database query and so on. <br/>
        
        <%= username%>
        <%= password%>


    </body>
</html>
