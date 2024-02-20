<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<%
    String username=request.getParameter("Uname");
    String name=request.getParameter("Fname");
    String dob=request.getParameter("DOB");
    String email=request.getParameter("Uemail");
    String pass=request.getParameter("pw1");
    String cpass=request.getParameter("pw2");
    String mobi=request.getParameter("mob");
    
    try{
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
    PreparedStatement ps = conn.prepareStatement("insert into USERS(USERNAME,FULL_NAME,DOB,EMAIL,PASS,CONFPASS,MOBILE) values(?,?,?,?,?,?,?)");
    ps.setString(1,username);
    ps.setString(2,name);
    ps.setString(3,dob);
    ps.setString(4,email);
    ps.setString(5,pass);
    ps.setString(6,cpass);
    ps.setString(7,mobi);
    int x=ps.executeUpdate();
    if(x!=0){
        out.print("Signup done Succesfully...");
    }else{
        out.print("Something went wrong");
    }
    }catch(Exception e){
    out.print(e);
    }
    
    %>
    <a href="login.jsp">Back to Login</a>
</html>