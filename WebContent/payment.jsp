<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function cardnumber(inputtxt)  
{  
  var cardno = /^(?:[0-9][0-9][0-9]{14})$/;  
  if(inputtxt.value.match(cardno))  
        {  
	  
      return true;  
        }  
      else  
        {  
        alert("Not a valid number! Please Enter 16-digit number");  
        return false;  
        }  
}  

        </script>

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
<div>
          <form action="<%=request.getContextPath() %>/CartController" name="form1" onSubmit="cardnumber(document.form1.card_no)" >
          <p class="text-center">Hello <%= session.getAttribute("cart_name")%>
          
          <p class="text-center">
          Payable amount is: <%= session.getAttribute("paid_amount")%>
          <p>
            <div class="table-responsive">
            
              <table class="table table-bordered">
                
                  <tr class="text-center">
                  
                 
                   <td > Please enter your card number: </td>
                  
                  
                  
                   </tr>
                  <tr class="text-center"><td><input type="text" name="card_no"></td>
                  </tr>
                  <tr>
                  <td>
          <input type="hidden" name="flag" value="confirm_order">
          <input type="hidden" name="cart_name" value="<%= session.getAttribute("cart_name") %>">
          <input type="hidden" name="paid_amount" value="<%= session.getAttribute("paid_amount") %>">
           
          
          
            <input class="btn btn-danger"  type="submit" value="confirm_order" />
            </td>
            </tr>
            </table>
            </div>
          </form>
        </div>
  
      
      <jsp:include page="footer.jsp"></jsp:include>
      <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/custom.js"></script>
      

</body>
</html>
