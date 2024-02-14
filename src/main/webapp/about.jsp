<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/bird.png">
    <title>Fine-Art Cart</title>
    <link rel="stylesheet" href="aboutstyle.css">
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
        <div class="welcome-box">
            <h1 class="heading">Welcome to Fine-Art Cart!</h1>
            <p class="message">
                Immerse yourself in the extraordinary journey of Fine-Art Cart, where every visit is an invitation to <br>
                explore the depths of artistic expression.Our platform is designed to elevate your connection with art <br> 
                from the seamless browsing experience  to the secure checkout process, we prioritize your satisfaction.<br><br>

                Fine-Art Cart is not just a marketplace; it's a celebration of creativity. The inclusion of paintings<br>
                by my friends brings a sense of camaraderie to the collection, making each piece a testament to the power<br>
                of collaboration and shared passion.<br><br>

                As you browse through Fine-Art Cart, envision your space transformed by the colors, emotions, and narratives embedded<br>
                in each acrylic masterpiece. Every purchase is a conscious decision to support artists and contribute to a thriving <br>
                ecosystem of creativity.<br><br>

                Thank you for choosing Fine-Art Cart as your destination for artistic discovery.<br>
                Let the strokes of brilliance on our canvas resonate with your aesthetic sensibilities and bring a touch of inspiration to your world.<br>
                Welcome to a realm where art transcends the ordinary.<br>
            </p>
            
        </div>
    </div>
</body>
</html>
