<%-- 
    Document   : ${name}
    Created on : ${date}, ${time}
    Author     : ${user}
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
${doctype}
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
   background: url('images/book.jpg') no-repeat rgba(0,0,0,.5);
   background-position: center;
   background-attachment: fixed;
   background-size: cover;
}
        </style>
        <script src="https://kit.fontawesome.com/07891f69f4.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <br>
        <h2><a href="home2.jsp"><i class="fa-solid fa-house-chimney fa-lg"></i></a></h2>
    <Center>
        <table border="1">
            <tr>
                <th>BUS_BOOKING_ID</th>
                <th>USERNAME</th>
                <th>TYPE</th>
                <th>BUSFROM</th>
                <th>BUSTO</th>
                <th>DATEDEPART</th>
                <th>ADULTS</th>
                <th>CHILD</th>
                
            </tr>
        <% Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("oracle.jdbc.driver.OracleDriver");
                          con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
                          String username=(String)session.getAttribute("username");
                          
                        pst = con.prepareStatement("select * from busform where username = ?");
                        pst.setString(1, username);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                %>
                <tr>
                    <td><%=rs.getString("BUS_BOOKING_ID")%></td>
                    <td><%=rs.getString("USERNAME")%></td>
                    <td><%=rs.getString("TYPE")%></td>
                    <td><%=rs.getString("BUSFROM")%></td>
                    <td><%=rs.getString("BUSTO")%></td>
                    <td><%=rs.getString("DATEDEPART")%></td>
                    <td><%=rs.getString("ADULTS")%></td>
                    <td><%=rs.getString("CHILD")%></td>
                </tr>
                <%
                    }
        %>
        </table>
    </Center>
    </body>
</html>
