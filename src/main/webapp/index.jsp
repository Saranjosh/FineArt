<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> FineArt Cart</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" type="image/png" href="images/bird.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="images/frontImg.png" class="froImg" alt="">
        <img src="images/bggg.png" class="log">
        <div class="text">
          <span class="text-1">Art enriches the soul, <br> it makes us whole.</span>
          <span class="text-2">Let's get connected</span>
        </div>
      </div>
      <div class="back">
        <img class="backImg" src="images/backImg.png" alt="image not found">
        <div class="text">
          <span class="text-1">Complete miles of journey <br> with one step</span>
          <span class="text-2">Let's get started</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
          <div class="login-form">
            <div class="title">Login</div>
          <form action="./LS" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" name="email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" name="pass" required>
              </div>
              <div class="text"><a href="forgot.jsp" style="color: #436850;">Forgot password?</a></div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
            </div>
        </form>
      </div>
        <div class="signup-form">
          <div class="title">Signup</div>
        <form action="./SS" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your name" name="name" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" name="email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" name="pass" required>
              </div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
            </div>
      </form>
    </div>
    </div>
    </div>
  </div>
  
  <!-- JS -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script type="text/javascript">
  var status = document.getElementById("status").value;
  if (status=="failed"){
	  Swal.fire({
		  icon: "error",
		  title: "Oops!",
		  text: "Something is fishy.Please check your Username or Password."
		});
  }
  else if (status=="success"){
	  Swal.fire({
		  icon: "success",
		  title: "Success!",
		  text: "Signed up. Let,s start rocking"
		});
  }
  else if (status=="wrong"){
	  Swal.fire({
		  icon: "error",
		  title: "Sorry!",
		  text: "Please ensure that your name should contains more than 2 characters, E-mail should contains more than 6 characters and Password should contains more than 5 characters"
		});	 
  }
  else if (status=="wrongemail"){
	  Swal.fire({
		  icon: "error",
		  title: "Sorry!",
		  text: "Email already exists!"
		});	 
  }
  else if (status=="emailexists"){
	  Swal.fire({
		  icon: "error",
		  title: "Sorry!",
		  text: "Email doesn't exists. please, Sign up!"
		});	 
  }
  else if (status=="passcheck"){
	  Swal.fire({
		  icon: "error",
		  title: "Sorry!",
		  text: "Password does not match"
		});	 
  }
  else if (status=="wrgpasslen"){
	  Swal.fire({
		  icon: "error",
		  title: "Sorry!",
		  text: "Password should contains more than 5 characters"
		});	 
  }
  else if (status=="passchngd"){
	  Swal.fire({
		  icon: "success",
		  title: "Success!",
		  text: "Password Changed!"
		});	 
  }
  </script>
</body>
</html>