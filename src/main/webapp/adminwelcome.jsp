<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session="true" %>
<html>
    <head>
        <meta http-equiv = "refresh" content = "2; url=http://localhost:8080/TRAVELWEBSITE/adminhome.jsp" />
    <title>WELCOME TO TRAVIA</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');
        /* CSS */
        body {
        background: url('images/wely.jpg');
        background-position: center;
          display: flex;
          align-items: center;
          justify-content: center;
          height: 100vh;
          font-family: Roboto;
        }
        a{
            font-size: 14px;
            position: absolute;
            left: 680px;
        }
    
      </style>
    
    </head>
    <body>
        <h1>
            Login Successful
            <br>
        <%
            String username=session.getAttribute("username").toString();
            out.println("You have succesfully logged in dear "+username);
        %></h1>
    </body>
</html>