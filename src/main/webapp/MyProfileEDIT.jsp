<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="javax.servlet.http.HttpSession" %>
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
        pst = con.prepareStatement("update users set FULL_NAME =?,DOB= ?,EMAIL= ?,PASS= ?,CONFPASS= ?,MOBILE= ? where USERNAME = ?");
        pst.setString(1,FULL_NAME);
        pst.setString(2,DOB);
        pst.setString(3,EMAIL);
        pst.setString(4,PASS);
        pst.setString(5,CONFPASS);
        pst.setString(6,MOBILE);
        pst.setString(7,USERNAME);
        pst.executeUpdate();        
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit My Profile</title> 
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
        <style>
        /* CSS */
        .parent-container {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
        }
    
        .centered-div {
          text-align: center;
          background-color: #f2f2f2;
          padding: 20px;
          position: absolute;
          left: 550px;
          width: 500px;
        }
        body{
            background: url(images/edit.jpg);
            background-size: cover;
        }
        h1{
            text-align: center;
            position: absolute;
            left: 680px;
        }
      </style>  
    </head>
    <body>
        <h1>Edit Profile</h1>
        
        
        <div class="row">
            <div class="col-sm-4">
                <div class="parent-container">
                    <div class="centered-div">
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("oracle.jdbc.driver.OracleDriver");
                          con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
                          String username=(String)session.getAttribute("username");
                          
                        pst = con.prepareStatement("select * from USERS where username = ?");
                        pst.setString(1, username);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                   <div alight="left">
                        <label class="form-label">USERNAME</label>
                        <input type="text" class="form-control" placeholder="USERNAME" name="USERNAME" id="USERNAME" value="<%= rs.getString("USERNAME")%>"readonly required >
                     </div>
                        
                    <div alight="left">
                        <label class="form-label">FULL_NAME</label>
                        <input type="text" class="form-control" placeholder="FULL_NAME" name="FULL_NAME" id="FULL_NAME" value="<%= rs.getString("FULL_NAME")%>" required >
                     </div>
                        
                     <div alight="left">
                        <label class="form-label">DOB</label>
                        <input type="date" class="form-control" placeholder="DOB" name="DOB" id="DOB" value="<%= rs.getString("DOB")%>"readonly required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">EMAIL</label>
                        <input type="text" class="form-control" placeholder="EMAIL" name="EMAIL" id="EMAIL" value="<%= rs.getString("EMAIL")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">PASS</label>
                        <input type="text" class="form-control" placeholder="PASS" name="PASS" id="PASS" onChange="PassChange()" value="<%= rs.getString("PASS")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">CONFPASS</label>
                        <input type="text" class="form-control" placeholder="CONFPASS" name="CONFPASS" id="CONFPASS" onChange="PassChange()" value="<%= rs.getString("CONFPASS")%>" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">MOBILE</label>
                        <input type="text" class="form-control" placeholder="MOBILE" name="MOBILE" id="MOBILE" value="<%= rs.getString("MOBILE")%>" required >
                     </div>
                    
                    
                    <% }  %>
                    
                    
                    
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                         <div alight="right">
                             
                             <p><a href="home2.jsp">Go Back</a></p>
                             
                             
                         </div>
  
                </form>
            </div>          
        </div>
            </div>
        </div>
          <script>
          function PassChange() {
            const pass = document.querySelector('input[name=PASS]');
            const confirm = document.querySelector('input[name=CONFPASS]');
            if (confirm.value === pass.value) {
              confirm.setCustomValidity('');
            } else {
              confirm.setCustomValidity('Passwords do not match');
            }
          }
         </script>
    </body>
</html>