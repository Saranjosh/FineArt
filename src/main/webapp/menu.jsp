<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title> Fine-Art Cart</title>
    <link rel="icon" type="image/png" href="images/bird.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="mstyle.css">
  </head>
  <body>
  <%
  String emailid = (String) request.getAttribute("email");
  String uname = (String) request.getAttribute("name");
  String cname = (String) request.getAttribute("cname");
  %>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
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
    <div class="welcome">
      <h3 class="hii">Hello, <%= request.getAttribute("name") %></h3>
    </div>

    <div class="wrapper">
      <div class="single-card">
        <div class="img-area">
          <img src="images/1.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="1">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>    
        <div class="info">
          <h3>Enchanted Rain Stroll</h3>
          <p class="price">₹1999</p>
          <p>Immerse yourself in the timeless romance of a couple sharing an umbrella amidst a gentle rain. This acrylic painting captures the tender moments of love and connection, making each step a dance in the rain.</p>
        </div>
      </div>

      <div class="single-card">
        <div class="img-area">
          <img src="images/2.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="2">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>
        <div class="info">
          <h3>Winter Haven</h3>
          <p class="price">₹1299</p>
          <p>A picturesque scene unfolds as snow blankets the landscape, embracing a charming house nestled among trees. This painting evokes the beauty of a winter, inviting you to experience the quiet magic of nature.</p>
        </div>
      </div>
    
      <div class="single-card">
        <div class="img-area">
          <img src="images/3.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="3">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>
        <div class="info">
          <h3>Cascading keys Harmony</h3>
          <p class="price">₹2975</p>
          <p>A whimsical realm where a girl plays a grand piano in a forest, conjuring a cascade of waterfalls. This captivating painting blends music and nature, creating a harmonious symphony of enchantment.</p>
        </div>
      </div>

      <div class="single-card">
        <div class="img-area">
          <img src="images/4.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="4">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>
        <div class="info">
          <h3>Dreaming with Words</h3>
          <p class="price">₹1250</p>
          <p>Witness the tranquil beauty of a girl lying on her back, immersed in a captivating book. This painting captures the serenity of reading, inviting you to get lost in a world of words while surrounded by a soothing atmosphere.</p>
        </div>
      </div>
      
      <div class="single-card">
        <div class="img-area">
          <img src="images/5.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="5">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>
        <div class="info">
          <h3>Umbrella Serenade</h3>
          <p class="price">₹950</p>
          <p>Navigate the city streets with this captivating depiction of people walking under umbrellas. The subtle interplay of light and shadows creates a mesmerizing scene, capturing the essence of shared moments and urban charm.</p>
        </div>
      </div>
    
      <div class="single-card">
        <div class="img-area">
          <img src="images/6.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="6">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>
        <div class="info">
          <h3>Golden Horizon</h3>
          <p class="price">₹1449</p>
          <p>Be captivated by the ethereal beauty of a breathtaking sunset. This painting showcases the warm hues of the sun bidding farewell to the day, creating a tranquil and awe-inspiring moment</p>
        </div>
      </div>

      <div class="single-card">
        <div class="img-area">
          <img src="images/7.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="7">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
			</div>
        </div>
        <div class="info">
          <h3>Regal Sacrifice</h3>
          <p class="price">₹2149</p>
          <p>A 400-year-old masterpiece by Queen Mithravindha depicting Bhairava's sacrifice, choosing duty over love for both the queen and the kingdom. The painting resonates with poignant emotion and royal devotion.</p>
        </div>
      </div>

      <div class="single-card">
        <div class="img-area">
          <img src="images/8.jpg" alt="">
          <div class="overlay">
            <form action="./MS" method="post">
            	<input type="hidden" name="name" value="<%= uname %>">
                <input type="hidden" name="email" value="<%= emailid %>">
                <input type="hidden" name="cname" value="<%= cname %>">
    			<input type="hidden" name="pid" value="8">
    			<button type="submit" class="add-to-cart">Add to Cart</button>
			</form>
            <form method="post" action="./TS">
            <input type="hidden" name="name" value="<%= uname %>">
            <input type="hidden" name="email" value="<%= emailid %>">
            <input type="hidden" name="cname" value="<%= cname %>">
            <button type="submit" class="view-details">Buy Now</button>
            </form>
          </div>
        </div>
        <div class="info">
          <h3>Majestic Wolf Spirit</h3>
          <p class="price">₹1499</p>
          <p>Embrace the untamed spirit with this striking wolf painting. The intricate details and vibrant colors bring this majestic creature to life, conveying strength, resilience, and a deep connection to the wilderness.</p>
        </div>
      </div>
    </div>
    <!-- JS -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script type="text/javascript">
  var status = document.getElementById("status").value;
  if (status=="success"){
	  Swal.fire({
		  position: "center",
		  icon: "success",
		  title: "Your item added to cart.",
		  showConfirmButton: false,
		  timer: 1000
		});
  }
  </script>
  </body>
</html>