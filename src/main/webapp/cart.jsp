<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title> Fine-Art Cart</title>
    <link rel="icon" type="image/png" href="images/bird.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cartstyle.css">
  </head>
  <body>
  <%
  String emailid = (String) request.getAttribute("email");
  String uname = (String) request.getAttribute("name");
  String cname = (String) request.getAttribute("cname");
  @SuppressWarnings("unchecked")
  Map<Integer,Integer> mp = (Map<Integer,Integer>)request.getAttribute("cart_arr");
  System.out.println(mp);
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
    		  <button type="submit" class="buto" >Home</button>
			</form>
            <form action="./CS" method="post">
              <input type="hidden" name="name" value="<%= uname %>">
              <input type="hidden" name="email" value="<%= emailid %>">
              <input type="hidden" name="cname" value="<%= cname %>">
    		  <button type="submit" class="buto" >Cart</button>
			</form>
            <form action="./AS" method="post">
              <input type="hidden" name="name" value="<%= uname %>">
              <input type="hidden" name="email" value="<%= emailid %>">
              <input type="hidden" name="cname" value="<%= cname %>">
    		  <button type="submit" class="buto" >About</button>
			</form>
            <form action="./CUS" method="post">
              <input type="hidden" name="name" value="<%= uname %>">
              <input type="hidden" name="email" value="<%= emailid %>">
              <input type="hidden" name="cname" value="<%= cname %>">
    		  <button type="submit" class="buto" >Contact us</button>
			</form>
            <form action="index.jsp" method="post">
    		  <button type="submit" class="buto" >Log out</button>
			</form>
          </div>
        </div>
      </div>
    </nav>
    <div class="contain">
        <div class="item-box">
        <%
        if(mp==null){
        %>
        <h1 class="heading">No Items in the Cart!</h1>
        <%} %>
        <%if(mp!=null) { 
        int total = 0;
        %>
            <h1 class="heading">Items in Your Cart!</h1>
            <%
          	for(Map.Entry<Integer, Integer> entry : mp.entrySet()){
          		int i = entry.getKey();
          		int j = entry.getValue();
          		switch(i){
          		case 1:
          			total += 1999*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Enchanted Rain Stroll</h2>
                    <p class="details">Immerse yourself in the timeless romance of a couple sharing an umbrella amidst a gentle rain. This acrylic painting captures the tender moments of love and connection, making each step a dance in the rain.</p>
                    <div class="inc">
                    <p class="price">₹<%= 1999*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
          	case 2:
          		total += 1299*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Winter Haven</h2>
                    <p class="details">A picturesque scene unfolds as snow blankets the landscape, embracing a charming house nestled among trees. This painting evokes the beauty of a winter, inviting you to experience the quiet magic of nature.</p>
                    <div class="inc">
                    <p class="price">₹<%= 1299*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
            case 3:
            	total += 2975*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Cascading keys Harmony</h2>
                    <p class="details">A whimsical realm where a girl plays a grand piano in a forest, conjuring a cascade of waterfalls. This captivating painting blends music and nature, creating a harmonious symphony of enchantment.</p>
                    <div class="inc">
                    <p class="price">₹<%= 2975*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
            case 4:
            	total += 1250*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Dreaming with Words</h2>
                    <p class="details">Witness the tranquil beauty of a girl lying on her back, immersed in a captivating book. This painting captures the serenity of reading, inviting you to get lost in a world of words while surrounded by a soothing atmosphere.</p>
                    <div class="inc">
                    <p class="price">₹<%= 1250*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
            case 5:
            	total += 950*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Umbrella Serenade</h2>
                    <p class="details">Navigate the city streets with this captivating depiction of people walking under umbrellas. The subtle interplay of light and shadows creates a mesmerizing scene, capturing the essence of shared moments and urban charm.</p>
                    <div class="inc">
                    <p class="price">₹<%= 950*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
            case 6:
            	total += 1449*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Golden Horizon</h2>
                    <p class="details">Be captivated by the ethereal beauty of a breathtaking sunset. This painting showcases the warm hues of the sun bidding farewell to the day, creating a tranquil and awe-inspiring moment.</p>
                    <div class="inc">
                    <p class="price">₹<%= 1449*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
            case 7:
            	total += 2149*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Regal Sacrifice</h2>
                    <p class="details">A 400-year-old masterpiece by Queen Mithravindha depicting Bhairava's sacrifice, choosing duty over love for both the queen and the kingdom. The painting resonates with poignant emotion and royal devotion.</p>
                    <div class="inc">
                    <p class="price">₹<%= 2149*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
            case 8:
            	total += 1499*j;
          %>
            <div class = "itemlist">
                <img src="images/<%= i %>.jpg" alt="Painting Image" class="item-img">
                <div class="item-desc">
                    <h2 class="tit">Majestic Wolf Spirit</h2>
                    <p class="details">Embrace the untamed spirit with this striking wolf painting. The intricate details and vibrant colors bring this majestic creature to life, conveying strength, resilience, and a deep connection to the wilderness.</p>
                    <div class="inc">
                    <p class="price">₹<%= 1499*j %></p>
                    <div class="wrapper">
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= -1 %>">
                      <button type="submit"><span class="minus">-</span></button>
                      </form>
                      <span class="num"><%= j %></span>
                      <form method="post" action="./US">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
              		  <input type="hidden" name="ird" value="<%= 1 %>">
                      <button type="submit"><span class="plus">+</span></button>
                      </form>
                    </div>
                    </div>
                    <div class = "but-div">
                      <form method="post" action="./BS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Buy</button>
                      </form>
                      <form method="post" action="./DS">
                      <input type="hidden" name="name" value="<%= uname %>">
              	      <input type="hidden" name="email" value="<%= emailid %>">
              		  <input type="hidden" name="cname" value="<%= cname %>">
              		  <input type="hidden" name="pid" value="<%= i %>">
                      <button type="submit" class="but">Delete</button>
                      </form>
                    </div>
                </div>
            </div>
            <%
            break;
          	}}
        %>
        <div class="tdiv">
        <pre class="total">Total: ₹<%= total %></pre>
        </div>
        <form method="post" action="./BAS">
        <input type="hidden" name="name" value="<%= uname %>">
      	<input type="hidden" name="email" value="<%= emailid %>">
        <input type="hidden" name="cname" value="<%= cname %>">
        <button type="submit" class="but">Proceed to Buy</button>
        </form>
        <%    
        }
            %>
        </div>
    </div>
</body>
</html>