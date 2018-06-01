<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<header id="header">
      
      <div class="header">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-4">
              
            </div>
            <div class="navbar-header col-xs-6 col-sm-4"> <a class="navbar-brand" 
            href="index.html <view-source:http://html.lionode.com/themini/tm001/index.html>"> 
            <img alt="themini" src="http://www.royal-leamington-spa.co.uk/identity-cms/wp-content/uploads/2014/12/Perfume-Shop.jpg"> </a> </div>
            <div class="col-xs-6 col-sm-4 shopcart">
              <div id="cart" class="btn-group btn-block mtb_40">
                <button type="button" class="btn" data-target="#cart-dropdown" data-toggle="collapse" aria-expanded="true"><span id="shippingcart">
                <%= session.getAttribute("cart_name") %>'s
                Shopping cart</span> </button>
              </div>
              <div id="cart-dropdown" class="cart-menu collapse">
                <ul>
                  
                  <li>
                    <form action="afterOrder.jsp"  method="post">
          			<input class="btn btn-danger"  type="submit" value="review_order" />
		           </form>
                  
                    
                    <form action="<%=request.getContextPath() %>/CartController">
                    <input type="hidden" name="flag" value="checkout">
                    <input type="hidden" name="cart_name" value="<%= session.getAttribute("cart_name") %>">
                      <input class="btn pull-right mt_10" value="checkout" type="submit">
                    </form>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <hr>
          <nav class="navbar">
            <p>menu</p>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse"> <span class="i-bar"><i class="fa fa-bars"></i></span></button>
            <div class="collapse navbar-collapse js-navbar-collapse">
              <ul id="menu" class="nav navbar-nav">
                
               
                <li class="dropdown"> <a href="# <view-source:http://html.lionode.com/themini/tm001/#>" class="dropdown-toggle" data-toggle="dropdown">Men's </a>
                  <ul class="dropdown-menu">
                   <li><a href="<%=request.getContextPath() %>/ProductController?name=BLAZE" >BLAZE</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=MANKIND">MANKIND</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=BLACK">BLACK</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=SAUVAGE">SAUVAGE</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=Newsletter">Newsletter Form</a></li>
                  </ul>
                </li>
                     
                <li class="dropdown"> <a  class="dropdown-toggle" data-toggle="dropdown">Women's </a>
                  <ul class="dropdown-menu">
                   <li><a href="<%=request.getContextPath() %>/ProductController?name=VICTORIAS SECRET- BOMBSHELL">VICTORIAS SECRET- BOMBSHELL</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=VERSACE">VERSACE</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=GUESS-Perfume Spray">GUESS-Perfume Spray</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=GUCCI- BAMBOO">GUCCI- BAMBOO</a></li>
                        <li><a href="<%=request.getContextPath() %>/ProductController?name=ANGEL">ANGEL</a></li>
                  </ul>
                </li>
                
                
              </ul>
            </div>
            <!-- /.nav-collapse -->
          </nav>
        </div>
      </div>
    </header>
</body>
</html>