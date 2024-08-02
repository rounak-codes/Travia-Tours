<%-- 
    Document   : forget
    Created on : 12-May-2023, 4:46:52 pm
    Author     : Saikat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
    <title>Forgot Password</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');
        body{
    

    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('../images/forgot.jpg');
    background-size: cover;
    

  }

* {
  box-sizing: border-box;
}

body {
  background-color: #f6f5f7;
  display: flex;
  flex-direction: column;
  height: 100vh;
  font-family: 'Roboto', sans-serif;
}

.forgot-container {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25),
    0 10px 10px rgba(0, 0, 0, 0.22);
  display: flex;
  flex-direction: column;
  padding: 50px;
  max-width: 400px;
  margin: auto;
  margin-top: 100px;
}

h1 {
  text-align: center;
  margin-bottom: 50px;
}

input[type='email'] {
  background-color: #f6f5f7;
  border: none;
  border-bottom: 2px solid #ddd;
  font-size: 16px;
  margin-bottom: 20px;
  padding: 10px;
  width: 100%;
}

button[type='submit'] {
  background-color: #4285f4;
  border: none;
  border-radius: 2px;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
  padding: 10px;
  transition: background-color 0.3s ease;
  width: 100%;
}

button[type='submit']:hover {
  background-color: #3367d6;
}

input:focus {
  outline: none;
  border-bottom: 2px solid #4285f4;
}

a {
  color: #4285f4;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
}

    </style>
  </head>
  <body>
    <div class="forgot-container">
      <h1>Forgot Password</h1>
      <form action="ForgotPassword">
        <input type="email" placeholder="Email" name="email">
        <button type="submit">Submit</button>
      </form>
      <a href="login.jsp">Back to Login</a>
    </div>
    <script>
        const form = document.querySelector('form');
const emailInput = document.querySelector('input[type="email"]');

form.addEventListener('submit', e => {
  e.preventDefault();
  
  const emailValue = emailInput.value.trim();
  
  if(emailValue === '') {
    showError(emailInput, 'Email cannot be blank');
  } else if(!isValidEmail(emailValue)) {
    showError(emailInput, 'Please enter a valid email');
  } else {
    showSuccess(emailInput);
    alert('Password reset instructions have been sent to your email.');
  }
});

function showError(input, message) {
  const formControl = input.parentElement;
  formControl.className = 'form-control error';
  const errorMessage = formControl.querySelector('small');
  errorMessage.innerText = message;
}

function showSuccess(input) {
  const formControl = input.parentElement;
  formControl.className = 'form-control success';
}

function isValidEmail(email) {
  const re = /^[^\s@]+@[^\s@]+\.[^\s
}

    </script>
  </body>
</html>

