package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CartVO;
import vo.OrderVO;
import vo.ProductVO;


public class CartDAO {
	public void insertToCart(CartVO v) {
		// TODO Auto-generated method stub
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.save(v);
			
			tr.commit();
			
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	
	public List displayCart(CartVO vo1) {
		List l1=new ArrayList();
		
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		
		Query q=session.createQuery("from CartVO where cart_name='"+vo1.getCart_name()+"'");
		l1=q.list();
		tr.commit();
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return l1;
	}


	public void insertToOrder(OrderVO ovo) {
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.save(ovo);
			
			System.out.println("order inserted");
			tr.commit();
			
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		
	}
	public List reviewOrder(OrderVO vo1) {
		List l2=new ArrayList();
		
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		
		Query q=session.createQuery(" from OrderVO where card_no='"+vo1.getCard_no()+"'");
		l2=q.list();
		tr.commit();
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return l2;
	}
	public void delete(CartVO vo)throws Exception
	{
		
		
		try{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.delete(vo);
		tr.commit();
		System.out.println("deleted");
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public List searchCartName(CartVO vo1) {
		List l1=new ArrayList();
		
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		
		Query q=session.createQuery("from CartVO where c_id='"+vo1.getC_id()+"'");
		l1=q.list();
		tr.commit();
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return l1;
	}

	

}
