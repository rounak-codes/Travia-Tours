<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
   background: url('images/tour-img-5.webp') no-repeat rgba(0,0,0,.5);
   background-position: center;
   background-attachment: fixed;
   background-size: cover;
   background-blend-mode: multiply;
}



.grid{
   display: grid;
   grid-template-columns: repeat(auto-fit, 30rem);
   align-items: flex-start;
   justify-content: center;
   gap: 1rem;
   margin-top: 1rem;
}

.grid .box{
   background-color: var(--light-bg);
   padding: 2rem;
   text-align: center;
   backdrop-filter: blur(.4rem);
   border-radius: .5rem;
   font-family: Arial;
}

.grid .box img{
   height: 10rem;
   transition: .2s linear;
}

.grid .box h3{
   padding: 2rem 0;
   font-size: 2rem;
   color: var(--white);
}

.grid .box p{
   line-height: 2;
   font-size: 1.5rem;
   color: var(--light-white);
}

.grid .box:hover{
   background-color: var(--light-black);
}

.grid .box:hover img{
   transform: scale(1.1);
}
h2 {text-align: center;
    font-family: Arial;
}
h3 {text-align: center;}
    </style>
     <script src="https://kit.fontawesome.com/07891f69f4.js" crossorigin="anonymous"></script>
</head>
<body>
  <h1><a href="home2.jsp"><i class="fa-solid fa-house-chimney fa-lg"></i></a></h1>
    <h2 style="font-size:60px; color: wheat">My bookings</h2>
    
    <div class="grid">
        
        <div class="box" data-aos="fade-up">
            <a href="viewtrain.jsp"><img src="images/train.jpg" alt=""></a>
           <h3 style="color:wheat">Train Bookings</h3>
         
        </div>
        
        <div class="box" data-aos="fade-up">
            <a href="viewflight.jsp"><img src="images/pexels-oleksandr-pidvalnyi-1004584.jpg" alt=""></a>
           <h3 style="color:wheat">Flight Bookings</h3>
           
        </div>
    
        
        <div class="box" data-aos="fade-up">
            <a href="viewbus.jsp"><img src="images/bus2.jpg" alt=""></a>
           <h3 style="color:wheat">Bus Bookings</h3>
           
        </div>
        
     </div>  
</body>
</html>