/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package travel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import travel.LoginServlet;
//@WebServlet("/flightingregister")
/**
 *
 * @author rounak
 */
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public class bussingregister extends HttpServlet{
    

    //create the query
    private static final String INSERT_QUERY ="INSERT INTO BUSFORM(TYPE,BUSFROM,BUSTO,DATEDEPART,ADULTS,CHILD,USERNAME) VALUES(?,?,?,?,?,?,?)";
     

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  
        //get PrintWriter
        PrintWriter pw = res.getWriter();
        //set Content type
        res.setContentType("text/html");
        HttpSession session = req.getSession();
        String username = (String)session.getAttribute("username");
        //read the form values
        String BusType = req.getParameter("browsers");
        String Bus_From = req.getParameter("BusFrom");
        String Bus_To = req.getParameter("BusTo");
        String Departing = req.getParameter("datedepart");
//        String Returning = req.getParameter("datearrive");
        String Adults = req.getParameter("Adults");
        String Children = req.getParameter("Child");
        //load the jdbc driver
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //create the connection
        try(Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
                PreparedStatement ps = con.prepareStatement(INSERT_QUERY);
                ){
            //set the values
            ps.setString(1, BusType);
            ps.setString(2, Bus_From);
            ps.setString(3, Bus_To);
            ps.setString(4, Departing);
//            ps.setString(5, Returning);
            ps.setString(5, Adults);
            ps.setString(6, Children);
            ps.setString(7,username);

            //execute the query
            int count = ps.executeUpdate();

            if(count==0) {
                pw.println("Something Went Wrong");
            }else {
                pw.println("Booking Complete <a href='home2.jsp'>Go Back To Home Page</a>");
            }
        }catch(SQLException se) {
            pw.println(se.getMessage());
            se.printStackTrace();
        }catch(Exception e) {
            pw.println(e.getMessage());
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(req, resp);
    }
}


