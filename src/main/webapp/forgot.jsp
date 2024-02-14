<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/bird.png">
    <title>Fine-Art Cart</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="forgotstyle.css">
</head>
<body>
    <div class="contain">
        <div class="forgot-box">
            <h1 class="heading">Reset Password</h1>
            <div class="signup-form">
              <form action="./FS" method="post">
                  <div class="input-boxes">
                    <div class="input-box">
                      <i class="fas fa-user"></i>
                      <input type="text" placeholder="Enter your email" name="email" required>
                    </div>
                    <div class="input-box">
                      <i class="fas fa-lock"></i>
                      <input type="password" placeholder="Enter new password" name="pass1" required>
                    </div>
                    <div class="input-box">
                      <i class="fas fa-lock"></i>
                      <input type="password" placeholder="Confirm password" name="pass2" required>
                    </div>
                    <div class="button input-box">
                      <input type="submit" value="Reset">
                    </div>
                  </div>
            </form>
          </div>
        </div>
    </div>
</body>
</html>
