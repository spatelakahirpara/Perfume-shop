package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dao.ProductDAO;
import vo.CartVO;
import vo.OrderVO;
import vo.ProductVO;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		 if(flag!=null && flag.equals("add"))
			{
				try {
					insertToCart(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 if(flag!=null && flag.equals("checkout"))
			{
				try {
					displayCart(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 if(flag!=null && flag.equals("payment"))
			{
				try {
					paymentOrder(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 if(flag!=null && flag.equals("confirm_order"))
			{
				try {
					insertPayment(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 if(flag!=null && flag.equals("show_order"))
			{
				try {
					searchCart(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}if(flag!=null && flag.equals("delete"))
			{
				try {
					deleteProduct(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
	}
	private void searchCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
			String cart_name= request.getParameter("cart_name");
		
		CartVO vo1 = new CartVO();
		CartDAO dao1 = new CartDAO();
		vo1.setCart_name(cart_name);
		
		System.out.println("display cart name="+cart_name);
		List cartList = dao1.displayCart(vo1);
		
		HttpSession session = request.getSession();
		session.setAttribute("cartList", cartList);
		session.setAttribute("cart_name", cart_name);
		System.out.println("list="+cartList);
		System.out.println(cart_name);
		
		response.sendRedirect("reviewOrderPage.jsp");
		// TODO Auto-generated method stub
		
	}

	private void reviewOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String card_no= request.getParameter("card_no");
		System.out.println("card no="+card_no);
		
		OrderVO ovo= new OrderVO();
		ovo.setCard_no(card_no);
		CartDAO d = new CartDAO();
		List orderList = d.reviewOrder(ovo);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("orderList", orderList);
		
		System.out.println("order list="+orderList);
		
			
		RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("/processing.jsp");
        requestDispatcher.forward(request, response);
		
		
	}

	private void paymentOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int paid_amount=Integer.parseInt(request.getParameter("paid_amount"));
		String cart_name= request.getParameter("cart_name");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("paid_amount", paid_amount);
		session.setAttribute("cart_name", cart_name);
		
		RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("/payment.jsp");
        requestDispatcher.forward(request, response);
		
		
		// TODO Auto-generated method stub
		
	}

	private void insertPayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String card_no= request.getParameter("card_no");
		
		int paid_amount=Integer.parseInt(request.getParameter("paid_amount"));
		String cart_name= request.getParameter("cart_name");
		
		
		OrderVO ovo= new OrderVO();
		ovo.setCard_no(card_no);
		ovo.setPaid_amount(paid_amount);
		ovo.setCart_name(cart_name);
		
		CartDAO d = new CartDAO();
		d.insertToOrder(ovo);
		
		HttpSession session = request.getSession();
		session.setAttribute("card_no", card_no);	
		
		RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("/afterOrder.jsp");
        requestDispatcher.forward(request, response);
		
		
		
		
	}

	private void displayCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String cart_name=(String) session.getAttribute("cart_name");
		
		CartVO vo1 = new CartVO();
		CartDAO dao1 = new CartDAO();
		vo1.setCart_name(cart_name);
		System.out.println("from display cart");
		
		
		
		List cartList = dao1.displayCart(vo1);
		
		
		session.setAttribute("cartList", cartList);
		session.setAttribute("cart_name", cart_name);
		System.out.println("list="+cartList);
		System.out.println(cart_name);
		
		response.sendRedirect("cartPage.jsp");
		// TODO Auto-generated method stub
		
	}

	private void insertToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cart_name=request.getParameter("cart_name");
		String product_name=request.getParameter("p_name");
		String product_quantity=request.getParameter("p_quantity");
		Integer product_quantity1= Integer.parseInt(product_quantity);
		String product_price1=request.getParameter("p_price");
		Integer unit_price= Integer.parseInt(product_price1);
		
		Integer total_price= product_quantity1 * unit_price;
		
		
		
		
		
		CartVO v=new CartVO();
		v.setCart_name(cart_name);
		v.setCart_p_name(product_name);
		v.setProduct_quantity(product_quantity1);
		v.setUnit_price(unit_price);
		v.setTotal_price(total_price);
			CartDAO d = new CartDAO();
		d.insertToCart(v);
		
		RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("/index1.jsp");
        requestDispatcher.forward(request, response);
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		 if(flag!=null && flag.equals("review_order"))
			{
				try {
					reviewOrder(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 
		doGet(request, response);
	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String cart_name=request.getParameter("cart_name");
		int c_id=Integer.parseInt(request.getParameter("c_id"));
		
		
		System.out.println("before dlt id"+c_id);
		CartVO vo = new CartVO();
		CartDAO dao = new CartDAO();
		vo.setC_id(Integer.parseInt(request.getParameter("c_id")));
		dao.delete(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("cart_name", cart_name);
		
		response.sendRedirect("CartController?flag=checkout");
        
		
		System.out.println(cart_name);
		
	
		// TODO Auto-generated method stub
		
	}

	

}
