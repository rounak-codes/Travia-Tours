<%@page import="java.sql.*" %> 
<!doctype html>
<html>
<% 
    
        String USERID = request.getParameter("USERID");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
        pst = con.prepareStatement("delete from Users where USERID = ?");
        pst.setString(1,USERID);
        pst.executeUpdate();        

%>
<a href="crudADMIN.jsp">RECORD DELETED , CLICK TO GO TO MAIN MENU</a>
</html>