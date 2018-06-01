

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script type="text/javascript">
      function function1(a) {
    	  var name=a;
    	  
    	  
    	  document.location='ProductController?name='+name;
      }
      
  </script>
  
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

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
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="css/style.css "/>
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png <view-source:http://html.lionode.com/themini/tm001/images/favicon.png>">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png <view-source:http://html.lionode.com/themini/tm001/images/apple-touch-icon.png>">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png <view-source:http://html.lionode.com/themini/tm001/images/apple-touch-icon-72x72.png>">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png <view-source:http://html.lionode.com/themini/tm001/images/apple-touch-icon-114x114.png>">
</head>

<body>

  <!-- =====  LODER  ===== -->
  <div class="loder"></div>
  <div class="wrapper">
    
    <!-- =====  HEADER START  ===== -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- =====  HEADER END  ===== -->
    <!-- =====  BANNER STRAT  ===== -->
   
    <!-- =====  BANNER END  ===== -->
    <!-- =====  CONTAINER START  ===== -->
    <div class="container">
      <!-- =====  SUB BANNER  STRAT ===== -->
      <!-- =====  SUB BANNER END  ===== -->
      <div class="row ">
        <div class="col-sm-12 mtb_10">
          <!-- =====  PRODUCT TAB  ===== -->
          <div id="product-tab" class="mt_30">
            <div class="heading-part mb_10 ">
              <h2 class="main_title">Perfume Items</h2>
            </div>
          
            
            
            <div class="tab-content clearfix box">
              <div class="tab-pane active" id="nArrivals">
                <div class="nArrivals owl-carousel">
                 <div class="product-grid">
                     
                      <c:forEach var="i" items="${sessionScope.productList }">
                        <div class="image product-imageblock">
                        <img onclick="function1('${i.product_name}');" src="<c:url value="${i.product_image}"/>"  class="img-responsive"/>
                        </div>
                        <div class="caption product-detail text-center">
                        <tr>
                        <td>	<c:out value=" ${i.product_name }"></c:out></td> 
                      		</tr>
             				</h6>
                          <span class="price"><span class="amount"><span class="currencySymbol">$</span>
                     		 <tr>
                      		<td> ${i.product_price }</td> </tr>
             				</span>
                          </span>
                        </div>
                        </c:forEach>
                      </div>
              </div>
            </div>
          </div>
          
          <!-- =====  PRODUCT TAB  END ===== -->
          <!-- =====  Blog ===== -->
           <!-- =====  Blog end ===== -->
          </div>
        </div>
      </div>
      
      <div class="newsletters mt_30 mb_50">
        
      </div>
    </div>
    <!-- =====  CONTAINER END  ===== -->
    <!-- =====  FOOTER START  ===== -->
    <jsp:include page="footer.jsp"></jsp:include>
        <!-- =====  FOOTER END  ===== -->
  </div>
  <a id="scrollup"></a>
  <script src="js/jQuery_v3.1.1.min.js "></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js "></script>
  <script src="js/jquery.magnific-popup.js "></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js "></script>
</body>

</html>


</body>
</html>