<!DOCTYPE html>
<html>
  <head>
    <title>Sign Up Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');
        body
{
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('../images/signupback.jpg');
    background-size: cover;
    background-position: center;
}

* {
  box-sizing: border-box;
}


.signup-container {
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

input[type='text'],
input[type='email'],
input[type='password'],
input[type='number'],
input[type='date']
{
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
    <div class="signup-container">
      <h1>Sign Up</h1>
      <form action="store.jsp" method="POST">
          <input type="text" placeholder="Full Name" id="Fname" name="Fname" onclick="this.value=" required="">
          <input type="date" placeholder="DOB" id="dob" name="DOB" onclick="this.value=" required="">
        <input type="email" placeholder="Email" id="Email" name="Uemail" onclick="this.value=" required="">
        <input type="text" placeholder="Username" id="Uname" name="Uname" onclick="this.value=" required="">
        <input type="password" placeholder="Password" name="pw1" onChange="onChange()" required="">
        <input type="password" placeholder="Confirm Password" name="pw2" onChange="onChange()" required="">
        <input type="number" placeholder="Mobile Number" name="mob" onclick="this.value()" required="">
        <button type="submit">Sign Up</button>
      </form>
      <a href="login.jsp">Back to Login</a>
    </div>
      <script>
          function onChange() {
            const pass = document.querySelector('input[name=pw1]');
            const confirm = document.querySelector('input[name=pw2]');
            if (confirm.value === pass.value) {
              confirm.setCustomValidity('');
            } else {
              confirm.setCustomValidity('Passwords do not match');
            }
          }
         </script>
    <script>
        const form = document.querySelector('form');
const fullNameInput = document.querySelector('input[type="text"]');
const emailInput = document.querySelector('input[type="email"]');
const passwordInput = document.querySelector('input[type="password"]');
const confirmPasswordInput = document.querySelectorAll('input[type="password"]')[1];

form.addEventListener('submit', e => {
  e.preventDefault();
  
  const fullNameValue = fullNameInput.value.trim();
  const emailValue = emailInput.value.trim();
  const passwordValue = passwordInput.value.trim();
  const confirmPasswordValue = confirmPasswordInput.value.trim();
  
  if(fullNameValue === '') {
    showError(fullNameInput, 'Full name cannot be blank');
  } else {
    showSuccess(fullNameInput);
  }
  
  if(emailValue === '') {
    showError(emailInput, 'Email cannot be blank');
  } else if(!isValidEmail(emailValue)) {
    showError(emailInput, 'Please enter a valid email');
  } else {
    showSuccess(emailInput);
  }
  

    </script>
  </body>
</html>
