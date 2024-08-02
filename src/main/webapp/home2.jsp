<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("username")==null)
      response.sendRedirect("home.jsp");

  %> 
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
   <link rel="stylesheet" href="css/style2.css">
   
</head>
<body style="overflow: hidden;">
   
<!-- header section starts  -->

<header class="header" data-aos="fade-down">

   <section class="flex">

      <a href="home2.jsp" class="logo">Travia.</a>

      <nav class="navbar">
         <a href="jsp/flighting.jsp"><i class="fas fa-plane" b style="color:red"></i>Flights</a>
         <a href="jsp/busbooking.jsp"><i class="fas fa-bus" b style="color:yellow"></i>Buses</a>
         <a href="jsp/train2.jsp"><i class="fa-solid fa-train" b style="color: greenyellow;"></i>Trains</a>
         <a href="Ltours.html"><i class="fas fa-tree" b style="color:#1ABC9C;"></i>tours</a> 
         <!--<a href="destinations.html"><i class="fa-solid fa-map-location-dot" b style="color: chocolate;"></i>destinations</a>-->
         <a href="Labout.html"><i class="fa-solid fa-address-card" b style="color:violet"></i>about</a> 
         <a href="Lcontact.html"><i class="fa-solid fa-bars" b style="color: goldenrod;"></i>contact</a>
         <a href="bookings.jsp"><i class="fa-solid fa-briefcase" b style="color:pink;"></i>bookings</a>
         <button class="btnLogin-popup"><a href="logout.jsp"><i class="fas fa-user-plus" b style="color:#1ABC9C;"></i>Logout</a> </button>
         <button class="btnLogin-popup"><a href="MyProfileEDIT.jsp"><i class="fas fa-user" b style="color:#1ABC9C;"></i>My Profile</a> </button>
      </nav>

      <div id="menu-btn" class=""></div> 

   </section>

</header>
<!-- home section ends -->
<div class="container destinations">

   <h1 class="heading" data-aos="zoom-out">destinations</h1>

   <section class="grid">

      <div class="box" data-aos="zoom-in">
         <img src="images/destination-1.jpg" alt="">
         <h3><span>Istanbul</span></h3>
         <div class="hover-content">
            <P>Istanbul, that offers unique historical and cultural riches together has hosted many different civilizations with its geography spread over two continents. This unique city which is admired by its charming nature and the attractive atmosphere is also the symbol of dynamic and modern city life</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-2.jpg" alt="">
         <h3><span>California</span></h3>
         <div class="hover-content">
            <P>From the stunning coastline to the towering mountains, the scenery in California is unlike anything else in the world. No matter where you go in the state, you will be surrounded by natural beauty. And with so many different landscapes to explore, you could spend months here and still not see it all</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-3.jpg" alt="">
         <h3><span>London</span></h3>
         <div class="hover-content">
            <P>London is home to some of the best museums and galleries in the world ? many of which are free, as well as many other free attractions. Spend an afternoon at the British Museum, Tate Modern, Natural History Museum or Science Museum, where you can browse the permanent collections at no cost.</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-4.jpg" alt="">
         <h3><span>Morocco</span></h3>
         <div class="hover-content">
            <P>Lively markets, desert treks, hiking to remote waterfalls, and beach days are just some of the wonders Morocco has in store. You can surf on the coast, sip some mint tea in the medina, and explore the ruins scattered throughout its many cities.</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-5.jpg" alt="">
         <h3><span>new york</span></h3>
         <div class="hover-content">
            <P>The Statue of Liberty, the Empire State Building, St. Patrick's Cathedral, Grand Central Station, and the list goes on. You'll discover magnificent architectural treasures and more New York City attractions than you can count.</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-6.jpg" alt="">
         <h3><span>paris</span></h3>
         <div class="hover-content">
            <P>Paris is a diverse and sophisticated city that appeals to the wealthy but can also be enjoyed on a budget. In addition to the Eiffel Tower, Paris has countless other gorgeous landmarks and monuments that add to the beauty of the spacious boulevards and their charming cafés</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-7.jpg" alt="">
         <h3><span>barcelona</span></h3>
         <div class="hover-content">
            <P>Barcelona is an artistic city with unique architecture, vibrant cultural scenery, access to mountain and sea, delicious food and beautiful people.</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-8.jpg" alt="">
         <h3><span>sydney</span></h3>
         <div class="hover-content">
            <p>city of iconic attractions and brilliant beaches, Sydney is a destination you'll never forget. Sydney is home to must-visit icons like the Sydney Harbour Bridge and Opera House, but this Harbour City is constantly evolving.</P>
         </div>
      </div>
      <div class="box" data-aos="zoom-in">
         <img src="images/destination-9.jpg" alt="">
         <h3><span>tokyo</span></h3>
         <div class="hover-content">
            <p>Tokyo is one of the most attractive cities in the world offering a tons of sightseeing attractions including historic monuments, unique museums, cool skyscraper and cultural experiences.</P>
         </div>
      </div>

   </section>

</div>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>