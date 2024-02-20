<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String USERID = request.getParameter("USERID");
        String USERNAME = request.getParameter("USERNAME");
        String FULL_NAME = request.getParameter("FULL_NAME");
        String DOB = request.getParameter("DOB");
        String EMAIL = request.getParameter("EMAIL");
        String PASS = request.getParameter("PASS");
        String CONFPASS = request.getParameter("CONFPASS");
        String MOBILE = request.getParameter("MOBILE");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
        pst = con.prepareStatement("update users set USERNAME = ?,FULL_NAME =?,DOB= ?,EMAIL= ?,PASS= ?,CONFPASS= ?,MOBILE= ? where USERID = ?");
        pst.setString(1,USERNAME);
        pst.setString(2,FULL_NAME);
        pst.setString(3,DOB);
        pst.setString(4,EMAIL);
        pst.setString(5,PASS);
        pst.setString(6,CONFPASS);
        pst.setString(7,MOBILE);
        pst.setString(8,USERID);
        pst.executeUpdate();        
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">    
    </head>
    <body>
        <h1>Users Update</h1>
        
        
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("oracle.jdbc.driver.OracleDriver");
                          con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
                           
                          String USERID = request.getParameter("USERID");
                          
                        pst = con.prepareStatement("select * from USERS where USERID = ?");
                        pst.setString(1, USERID);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                   <div alight="left">
                        <label class="form-label">USERNAME</label>
                        <input type="text" class="form-control" placeholder="USERNAME" name="USERNAME" id="USERNAME" value="<%= rs.getString("USERNAME")%>" required >
                     </div>
                        
                    <div alight="left">
                        <label class="form-label">FULL_NAME</label>
                        <input type="text" class="form-control" placeholder="FULL_NAME" name="FULL_NAME" id="FULL_NAME" value="<%= rs.getString("FULL_NAME")%>" required >
                     </div>
                        
                     <div alight="left">
                        <label class="form-label">DOB</label>
                        <input type="date" class="form-control" placeholder="DOB" name="DOB" id="DOB" value="<%= rs.getString("DOB")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">EMAIL</label>
                        <input type="text" class="form-control" placeholder="EMAIL" name="EMAIL" id="EMAIL" value="<%= rs.getString("EMAIL")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">PASS</label>
                        <input type="text" class="form-control" placeholder="PASS" name="PASS" id="PASS" value="<%= rs.getString("PASS")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">CONFPASS</label>
                        <input type="text" class="form-control" placeholder="CONFPASS" name="CONFPASS" id="CONFPASS" value="<%= rs.getString("CONFPASS")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">MOBILE</label>
                        <input type="text" class="form-control" placeholder="MOBILE" name="MOBILE" id="MOBILE" value="<%= rs.getString("MOBILE")%>" required >
                     </div>
                    
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div align="right">
                             
                             <p><a href="crudADMIN.jsp">Click to go Back</a></p>
                             
                             
                         </div>
  
                </form>
            </div>          
        </div>
  
    </body>
</html>