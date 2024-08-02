<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
    if(session.getAttribute("username")==null){
    response.sendRedirect(request.getContextPath() + "/home.jsp");

}
%>
<html>
    <head>
        <meta http-equiv = "refresh" content = "3; url=http://localhost:8080/TRAVELWEBSITE/home.jsp" />
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
            top: 500px;
        }
    
      </style>
      
    </head>
    <body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">>
        <h1>
        <br>
        <%
            session.invalidate();
            out.println("You have succesfully logged out!! You will be redirected");
        %>
    </h1>
        </body>
    
</html>