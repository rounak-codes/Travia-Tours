<%-- 
    Document   : login
    Created on : 12-May-2023, 4:39:43 pm
    Author     : Saikat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
    <title>Login Form</title>
<style>
  @import url('https://fonts.googleapis.com/css?family=Roboto');
    body{
    

    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('../images/loginback3.jpg');
    background-size: cover
    

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
  color: black;
  font-family: Roboto;
}

label {
  display: inline-block;
  margin-bottom: 5px;
  color: black;
  font-family: Roboto;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  color: grey;
  
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
    
      <form action=../LoginServlet method="POST">
      <h2>Login</h2>
      <label for="username" required>Username:</label>
      <input type="text" id="username" name="username" required>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password">
      <button type="submit" id="loginBtn" name="submit">Login</button>
      <!--<label for="remember">remember me</label>-->
      <!--<p>Forget password? <a href="../forgotPassword.jsp">click here</a></p>-->
      <p>Don't have an account? <a href="signup.jsp">Register now</a></p>
      <p>Go to Home Page <a href="../home.jsp">click here</a></p>
      <p>Are you an admin?<a href="adminlogin.jsp">click here to login</a></p>
      
    </form>
  </body>
</html>

