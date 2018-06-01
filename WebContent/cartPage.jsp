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
<div class="col-sm-8 col-lg-9 mtb_20">
          <form enctype="multipart/form-data" method="get" action="<%=request.getContextPath() %>/CartController">
          <input type="hidden" name="flag" value="delete"> 
            <div class="table-responsive">
              <table class="table table-bordered">
                <thead>
                  <tr>
                   
                    <td class="text-left">Product Name</td>
                    
                    <td class="text-left">Quantity</td>
                    <td class="text-left">Remove Item</td>
                    <td class="text-right">Unit Price</td>
                    <td class="text-right">Total</td>
                  </tr>
                </thead>
                <tbody> 
                <c:forEach var="i" items="${sessionScope.cartList }">
                <input type="hidden" name="c_id" value="${i.c_id }">
                <input type="hidden" name="cart_name" value="${i.cart_name }">
                
                 <tr> 
                   <td class="text-left"><a href="product.html">${i.cart_p_name}</a></td>
                   
                    <td class="text-left">
                      <div style="max-width: 200px;" class="input-group btn-block">
                        ${i.product_quantity }
                     
                        </div>
                        </td>
                   
                      <td>
                      <span class="input-group-btn">
                      <input  class="btn btn-danger"  type="submit" value="Remove"></button>
                      </span>
                    </td>
                    <td class="text-right"><input type="hidden" value="${i.unit_price }" name="unit">${i.unit_price }</td>
                    <td class="text-right"><input type="hidden" value="${i.total_price }" name="total">${i.total_price }</td>
                  </tr>
                  
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </form>
       
            
          </div>
          <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
              <table class="table table-bordered">
                <tbody>
                
                  <tr>
                    <td class="text-right"><strong>Sub-Total:</strong></td>
                    <td class="text-right"> 
                    
                    <c:set var="total" value="${0}"/>
					<c:forEach var="i" items="${sessionScope.cartList}">
					    <c:set var="total" value="${total + i.total_price}" />
					</c:forEach>
					${total }
					  </td>
                  </tr>
                  </tbody>
              </table>
            </div>
          </div>
          <center>
          <form action="<%=request.getContextPath() %>/DataController">
          <input type="hidden" name="flag" value="display"> 
           <input type="hidden" name="cart_name" value="<%= session.getAttribute("cart_name")%>">
            <input class="btn btn-danger" type="submit" value="Continue Shopping" />
          </form>
          </center>
          <center>
          <form action="<%=request.getContextPath() %>/CartController">
          <input type="hidden" name="flag" value="payment"> 
          <input type="hidden" name="paid_amount" value="${total }"> 
           <input type="hidden" name="cart_name" value="<%= session.getAttribute("cart_name")%>">
          
            <input class="btn btn-danger" type="submit" value="payment" />
          </form>
          </center>
        </div>
      </div>
      
      <jsp:include page="footer.jsp"></jsp:include>
      <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/custom.js"></script>
      

</body>
</html>