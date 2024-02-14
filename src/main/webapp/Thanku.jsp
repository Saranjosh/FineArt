<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/bird.png">
    <title>Fine-Art Cart</title>
    <link rel="stylesheet" href="thankstyle.css">
</head>
<body>
  <%
  String emailid = (String) request.getAttribute("email");
  String uname = (String) request.getAttribute("name");
  String cname = (String) request.getAttribute("cname");
  %>
    <nav>
        <div class="navbar">
          <div class="container nav-container">
            <input class="checkbox" type="checkbox" name="" id="" />
            <div class="hamburger-lines">
              <span class="line line1"></span>
              <span class="line line2"></span>
              <span class="line line3"></span>
            </div>  
            <div class="logo">
                    <img src="images/bird.png" style="width: 50px; height: 50px;">
                    <h1>FINE-ART CART</h1>
            </div>
            <div class="menu-items">
              <form action="./HS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>"> 
                <input type="hidden" name="pid" value="1">
                <button type="submit" class="but" >Home</button>
              </form>
              <form action="./CS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
                <button type="submit" class="but" >Cart</button>
              </form>
              <form action="./AS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
                <button type="submit" class="but" >About</button>
              </form>
              <form action="./CUS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
                <button type="submit" class="but" >Contact us</button>
              </form>
              <form action="index.jsp" method="post">
                <button type="submit" class="but" >Log out</button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    <div class="contain">
        <div class="thank-you-box">
            <h1 class="heading">Thank You!</h1>
            <img src="images/heart2.png" alt="Painting Image" class="painting">
            <p class="message">We appreciate your purchase of a beautiful piece of art from Fine-Art Cart!</p>
            <p class="details">Your support for independent artists makes a world of difference. We are thrilled that you have chosen to bring their art into your home.</p>
            <p class="next-steps">You will receive a confirmation email with your order details shortly. Your artwork will be shipped within 7 business days.<br> We can't wait for you to receive it!</p>
            <form action="./HS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
                <button type="submit" class="button" >Explore More Art</button>
            </form>
        </div>
    </div>
</body>
</html>
