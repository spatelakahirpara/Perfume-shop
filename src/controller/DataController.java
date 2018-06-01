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

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.CartDAO;
import dao.ProductDAO;
import vo.CartVO;
import vo.ProductVO;

/**
 * Servlet implementation class Data
 */
@WebServlet(name = "DataController", urlPatterns = { "/DataController" })
public class DataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		 if(flag!=null && flag.equals("insert"))
			{
				try {
					insertProduct(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		 if(flag!=null && flag.equals("displayCart"))
			{
				try {
					insertCart(request,response);		
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
	
		 if(flag!=null && flag.equals("display"))
		{
			try {
				displayProduct(request, response);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		//response.sendRedirect("index1.jsp");
        
		
		//response.sendRedirect("CommentController?flag=display");
		
	}

	private void insertCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartVO v=new CartVO();
		v.setCart_name("fisrt cart");
		v.setCart_p_name("get name here");
		v.setProduct_quantity(2);
		
	
	
		CartDAO d = new CartDAO();
		d.insertToCart(v);
		
		RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("/index1.jsp");
        requestDispatcher.forward(request, response);
		// TODO Auto-generated method stub
		
	}

	private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductVO v=new ProductVO();
		v.setProduct_name(" love4");
		v.setProduct_desc("good..");
		v.setProduct_price("10");
		v.setProduct_image("img5");
		
	
	
		ProductDAO d = new ProductDAO();
		d.insertData(v);
		
		RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("/index1.jsp");
        requestDispatcher.forward(request, response);
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		
	}

	private void displayProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String cart_name= request.getParameter("cart_name");
		
		ProductVO vo1 = new ProductVO();
		ProductDAO dao1 = new ProductDAO();
		
		List productList = dao1.displayProduct(vo1);
		HttpSession session = request.getSession();
		session.setAttribute("productList", productList);
		session.setAttribute("cart_name", cart_name);
		response.sendRedirect("index1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
