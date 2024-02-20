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
    public class trainingregister extends HttpServlet{
    

    //create the query
    private static final String INSERT_QUERY ="INSERT INTO TRAINFORM(TRAINFROM,TRAINTO,DATEDEPART,ADULTS,CHILD,USERNAME,TRAINNO) VALUES(?,?,?,?,?,?,?)";
     

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  
        //get PrintWriter
        PrintWriter pw = res.getWriter();
        //set Content type
        res.setContentType("text/html");
        HttpSession sess = req.getSession();
        String username = (String)sess.getAttribute("username");
        //read the form values
        
        String TrainFrom = req.getParameter("TrainFrom");
        String TrainTo = req.getParameter("TrainTo");
        String Departing = req.getParameter("datedepart");
        String TrainNo = req.getParameter("trainno");
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
            
            ps.setString(1, TrainFrom);
            ps.setString(2, TrainTo);
            ps.setString(3, Departing);
            ps.setString(4, Adults);
            ps.setString(5, Children);
            ps.setString(6, username);
            ps.setString(7,TrainNo);

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


