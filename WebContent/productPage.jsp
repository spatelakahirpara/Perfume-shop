<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
  <!-- =====  BASIC PAGE NEEDS  ===== -->
  <meta charset="utf-8">
  <title>Themini E-commerce Bootstrap Template</title>
  <!-- =====  SEO MATE  ===== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="distribution" content="global">
  <meta name="revisit-after" content="2 Days">
  <meta name="robots" content="ALL">
  <meta name="rating" content="8 YEARS">
  <meta name="Language" content="en-us">
  <meta name="GOOGLEBOT" content="NOARCHIVE">
  <!-- =====  MOBILE SPECIFICATION  ===== -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="viewport" content="width=device-width">
  <!-- =====  CSS  ===== -->
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
</head>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="row mt_10 ">
<c:forEach var="i" items="${sessionScope.productList1 }">
              	
              	<c:if test="${(i.product_name eq sessionScope.name)}">
            <div class="col-md-6">
              <div><a class="thumbnails"> <img data-name="product_image" src="<c:url value="${i.product_image}"/>" alt="" /></a></div>
              <div id="product-thumbnail" class="owl-carousel">
                
                
              </div>
            </div>
           
            <div class="col-md-6 prodetail caption product-thumb">
            
           
           
            
              	
              <h4 data-name="product_name" class="product-name"><a href="#" title="Casual Shirt With Ruffle Hem">
              
              <c:out value=" ${i.product_name }"></c:out></a></h4>
              
             
              <span class="price mb_20"><span class="amount"><span class="currencySymbol">$</span>
            <c:out value=" ${i.product_price }" ></c:out></span>
              </span>
              
   
              
              <p class="product-desc mtb_30" id="p_desc"> ${i.product_desc}</p>
              <div id="product">
           <form action="<%=request.getContextPath() %>/CartController" method="get">
                <div class="qty mt_30 form-group2">
                  <label>Qty</label>
                  <input name="p_quantity" type="number"  value="1">
                </div>
                <div class="button-group mt_60">
                
                <input type="hidden" name="p_name" value="${i.product_name }"/>
                <input type="hidden" name="p_price" value="${i.product_price }"/>
                
                <input class="btn btn-danger" type="submit" value="Add to Cart"/>
                
                <input type="hidden" name="cart_name" value="<%= session.getAttribute("cart_name") %>"/>
                <input type="hidden" name="flag" value="add"/>
                </form>
                <form action="<%=request.getContextPath() %>/DataController" method="get" >
          <input class="btn btn-danger"  type="submit" value="Back to Home" />
          
          <input type="hidden" name="cart_name" value="<%= session.getAttribute("cart_name") %>">
          <input type="hidden" name="flag" value="display"> 
    
         
          </form>
                </div>
              </div>
              </c:if>
              </c:forEach>
            </div>
          </div>
          
         <jsp:include page="footer.jsp"></jsp:include>
          <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/custom.js"></script>
</body>
          

</body>
</html>