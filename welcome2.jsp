<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session="true" %> 
<html>
    <head>
    <title>WELCOME TO TRAVIA</title>
    </head>
    <body>
        <h1>
            Login Successful
        </h1>
        <a href="home2.jsp"> BACK TO HOME</a>
        <%
            String username=session.getAttribute("username").toString();
            out.println("You have succesfully logged in dear "+username);
        %>
    </body>
</html>