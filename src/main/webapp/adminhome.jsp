<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home</title>

   <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
   <script src="https://kit.fontawesome.com/07891f69f4.js" crossorigin="anonymous"></script>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
   <script src="https://kit.fontawesome.com/07891f69f4.js" crossorigin="anonymous"></script>
   <script src="https://kit.fontawesome.com/07891f69f4.js" crossorigin="anonymous"></script>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style3.css">
 
</head>
<body style="overflow: hidden;">
   
<!-- header section starts  -->

<header class="header" data-aos="fade-down">

   <section class="flex">

      <a href="adminhome.jsp" class="logo">Travia.</a>

      <nav class="navbar">
         <a href="jsp/flightadmins.jsp"><i class="fas fa-plane" b style="color:red"></i>View All Flight Bookings</a>
         <a href="jsp/busadmins.jsp"><i class="fas fa-bus" b style="color:yellow"></i>View All Bus Bookings</a>
         <a href="jsp/trainsadmin.jsp"><i class="fa-solid fa-train" b style="color: greenyellow;"></i>View All Train Bookings</a>
         <a href="crudADMIN.jsp"><i class="fa-solid fa-user-plus" b style="color: greenyellow;"></i>View All Users</a>
         <button class="btnLogin-popup"><a href="logout.jsp"><i class="fas fa-user-plus" b style="color:#1ABC9C;"></i>Logout</a> </button>
      </nav>

      <!--<div class="icons">
         <i class="fas fa-user" id="search-btn"></i>
      </div> -->

      <div id="menu-btn" class=""></div> 

   </section>

</header>
<!-- home section ends -->
<div class="container destinations">

   <!--<h1 class="heading" data-aos="zoom-out">destinations</h1>-->

   <section class="grid">

      <div class="box" data-aos="zoom-in">
         <img src="images/destination-1.jpg" alt="">
         <h3><span>istanbul</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-2.jpg" alt="">
         <h3><span>california</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-3.jpg" alt="">
         <h3><span>london</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-4.jpg" alt="">
         <h3><span>morocco</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-5.jpg" alt="">
         <h3><span>new york</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-6.jpg" alt="">
         <h3><span>paris</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-7.jpg" alt="">
         <h3><span>barcelona</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-8.jpg" alt="">
         <h3><span>sydney</span></h3>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-9.jpg" alt="">
         <h3><span>tokyo</span></h3>
      </div>

   </section>

</div>

<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>