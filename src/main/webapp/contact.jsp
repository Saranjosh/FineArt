<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/bird.png">
    <title>Fine-Art Cart</title>
    <link rel="stylesheet" href="contactstyle.css">
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
                <input type="hidden" name="pid" value="1">
                <button type="submit" class="but" >Cart</button>
              </form>
              <form action="./AS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>"> 
                <input type="hidden" name="pid" value="1">
                <button type="submit" class="but" >About</button>
              </form>
              <form action="./CUS" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>"> 
                <input type="hidden" name="pid" value="1">
                <button type="submit" class="but" >Contact us</button>
              </form>
              <form action="index.jsp" method="post">
                <input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>"> 
                <input type="hidden" name="pid" value="1">
                <button type="submit" class="but" >Log out</button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    <div class="contain">
        <div class="contact-box">
            <h1 class="heading">Get in Touch with Fine-Art Cart</h1>
            <p class="message">
                Feel free to reach out to us at Fine-Art Cart, your gateway to a world of artistic excellence.<br>
                Whether you have questions about a specific painting, need assistance with your order, or<br> 
                simply want to share your thoughts, we're here to connect with you.<br><br>

                <b>Contact Information:</b><br>
                <b>Email:</b>info@fineartcart.com<br>
                <b>Phone:</b>+91-XXXXXXX444<br>
                <b>Address:</b>Hyderabad, Telangana<br><br>

                Our dedicated support team is committed to providing prompt and personalized assistance. <br>
                If you're an artist interested in featuring your work on Fine-Art Cart, drop us a message <br>
                we're always on the lookout for fresh and inspiring talent.<br><br>

                Connect with us on social media to stay updated on the latest additions to our collection,<br>
                exclusive promotions, and behind-the-scenes glimpses into the world of Fine-Art Cart.<br><br>

                Thank you for being a part of our community. Your inquiries, feedback, and stories matter<br>
                to us. Let's continue this artistic journey together.<br>
            </p>
            
        </div>
    </div>
</body>
</html>
