<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%if(request.getParameter("SUBMIT")!=null){
        String FlightType = request.getParameter("browsers");
        String Fly_From = request.getParameter("FlyFrom");
        String Fly_To = request.getParameter("FlyTo");
        String Departing = request.getParameter("datedepart");
        String Returning = request.getParameter("datearrive");
        String Adults = request.getParameter("Adults");
        String Children = request.getParameter("Child");
        String username=session.getAttribute("username").toString();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
        PreparedStatement ps = con.prepareStatement("INSERT INTO FLIGHTFORM(TYPE,FLYFROM,FLYTO,DATEDEPART,DATEARRIVE,ADULTS,CHILD,USERNAME) VALUES(?,?,?,?,?,?,?,?)");
            ps.setString(1, FlightType);
            ps.setString(2, Fly_From);
            ps.setString(3, Fly_To);
            ps.setString(4, Departing);
            ps.setString(5, Returning);
            ps.setString(6, Adults);
            ps.setString(7, Children);
            ps.setString(8,username);
            ps.executeUpdate();
            out.println("Booking Complete");
    }
    %>