<%-- 
    Document   : adminlogin
    Created on : 12-May-2023, 4:54:21 pm
    Author     : Saikat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Admin Login</title>
<style>
  @import url('https://fonts.googleapis.com/css?family=Roboto');
    body{
    

    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('../images/loginback3.jpg');
    background-size: cover;
    

  }
  p{
    size: 20px;
    color: whitesmoke;
  }
    form {
  width: 400px;
  margin: 0 auto;
  padding: 50px;
  border: 2px solid #ddd;
  border-radius: 5px;
  background: rgba(240, 240, 240, 0.8);
}

h2 {
  text-align: center;
  font-family: Roboto;
}

label {
  display: inline-block;
  margin-bottom: 5px;
  font-family: Roboto;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

button {
  display: block;
  width: 100%;
  padding: 10px;
  background-color: #008CBA;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-family: Roboto;
}

button:hover {
  background-color: #005F6B;
}
p{
    color: red;
    font-family: Roboto;
}
</style>
  </head>
  <body>
    
    <form action=../AdminLoginServlet method="POST">
      <h2>Admin Login</h2>
      <label for="username">Username</label>
      <input type="text" id="username" name="username">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password">
      <button type="submit" id="loginBtn" name="submit">Login</button>
      <p>Go to Home Page <a href="../home.jsp">click here</a></p>
      <!--<label for="remember">remember me</label>-->
      
    </form>
  </body>
</html>
