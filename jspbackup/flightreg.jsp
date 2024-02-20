<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<%
    String FlightType=request.getParameter("browsers");
    String Fly_From=request.getParameter("FlyFrom");
    String Fly_To=request.getParameter("FlyTo");
    String Departing=request.getParameter("datedepart");
    String Returning=request.getParameter("datearrive");
    String Adults=request.getParameter("Adults");
    String Children=request.getParameter("Child");
    
    try{
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
    PreparedStatement ps = conn.prepareStatement("INSERT INTO FLIGHTFORM(TYPE,FLYFROM,FLYTO,DATEDEPART,DATEARRIVE,ADULTS,CHILD) VALUES(?,?,?,?,?,?,?)");
    ps.setString(1,FlightType);
    ps.setString(2,Fly_From);
    ps.setString(3,Fly_To);
    ps.setString(4,Departing);
    ps.setString(5,Returning);
    ps.setString(6,Adults);
    ps.setString(7,Children);
    int x=ps.executeUpdate();
    if(x!=0){
        out.print("BOOKING COMPLETE");
    }else{
        out.print("Something went Wrong");
    }
    }catch(Exception e){
    out.print(e);
    }
    
    %>
    <a href="home.jsp">YOUR BOOKING IS DONE , GO TO HOMEPAGE</a>
</html>