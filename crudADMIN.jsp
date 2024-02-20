<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%      
    if(request.getParameter("submit")!=null){    
        String USERNAME = request.getParameter("USERNAME");
        String FULL_NAME = request.getParameter("FULL_NAME");
        String DOB = request.getParameter("DOB");
        String EMAIL = request.getParameter("EMAIL");
        String PASS = request.getParameter("PASS");
        String CONFPASS = request.getParameter("CONFPASS");
        String MOBILE = request.getParameter("MOBILE");        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");        
        PreparedStatement pst = con.prepareStatement("INSERT INTO USERS(USERNAME,FULL_NAME,DOB,EMAIL,PASS,CONFPASS,MOBILE)values(?,?,?,?,?,?,?)");
        pst.setString(1,USERNAME);
        pst.setString(2,FULL_NAME);
        pst.setString(3,DOB);
        pst.setString(4,EMAIL);
        pst.setString(5,PASS);
        pst.setString(6,CONFPASS);
        pst.setString(7,MOBILE);
        pst.executeUpdate();
            }
            %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center;">MANAGE USERS</h1>
        </br>
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" >                    
                    <div alight="left">
                        <label class="form-label">USERNAME</label>
                        <input type="text" class="form-control" placeholder="USERNAME" name="USERNAME" id="USERNAME" required >
                     </div>
                        
                    <div alight="left">
                        <label class="form-label">FULL_NAME</label>
                        <input type="text" class="form-control" placeholder="FULL_NAME" name="FULL_NAME" id="FULL_NAME" required >
                     </div>
                        
                     <div alight="left">
                        <label class="form-label">DOB</label>
                        <input type="date" class="form-control" placeholder="DOB" name="DOB" id="DOB" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">EMAIL</label>
                        <input type="text" class="form-control" placeholder="EMAIL" name="EMAIL" id="EMAIL" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">PASS</label>
                        <input type="text" class="form-control" placeholder="PASS" name="PASS" id="PASS" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">CONFPASS</label>
                        <input type="text" class="form-control" placeholder="CONFPASS" name="CONFPASS" id="CONFPASS" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">MOBILE</label>
                        <input type="text" class="form-control" placeholder="MOBILE" name="MOBILE" id="MOBILE" required >
                     </div>
                    
                         </br>                        
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         <div align="right"> 
                             <p><a href="adminhome.jsp">Click to go Back</a></p>  
                         </div>
                </form>
            </div>
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                    <th>USERNAME</th>
                                    <th>FULL_NAME</th>
                                    <th>DOB</th>
                                    <th>EMAIL</th>
                                    <th>PASS</th>
                                    <th>CONFPASS</th>
                                    <th>MOBILE</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             </tr>
                              <%  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
                                
                                  String query = "select * from users";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String USERID = rs.getString("USERID");
                                   %>
                                   <tr>
                                 <td><%=rs.getString("USERNAME") %></td>
                                 <td><%=rs.getString("FULL_NAME") %></td>
                                 <td><%=rs.getString("DOB") %></td>
                                 <td><%=rs.getString("EMAIL") %></td>
                                 <td><%=rs.getString("PASS") %></td>
                                 <td><%=rs.getString("CONFPASS") %></td>
                                 <td><%=rs.getString("MOBILE") %></td>
                                 <td><a href="crudADMINupd.jsp?USERID=<%=USERID%>">Edit</a></td>
                                 <td><a href="crudADMINdel.jsp?USERID=<%=USERID%>">Delete</a></td>
                             </tr>
                             <%
                                
                                 }
                               %>
                               </table>    
                 </div>
                        
            </div>  
        </div>
    </body>
</html>