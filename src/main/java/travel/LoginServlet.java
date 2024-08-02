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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rounak
 */
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out=response.getWriter();
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
            String n=request.getParameter("username");
            String p=request.getParameter("password");
            PreparedStatement ps=con.prepareStatement("SELECT USERNAME FROM USERS WHERE USERNAME=? AND PASS=?");
            ps.setString(1,n);
            ps.setString(2, p);
            ResultSet rs=ps.executeQuery();
            String username=request.getParameter("username");
            out.println();
            HttpSession session = request.getSession(true);
            session.setAttribute("username",username);
            if(rs.next())
            {
                RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
                rd.forward(request, response);
            }
            else{
                out.println("<font color=red size=20>Login Failed!!<br>");
                out.println("<a href=jsp/login.jsp> Try Again");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
