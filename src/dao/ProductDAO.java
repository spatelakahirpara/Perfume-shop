package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.ProductVO;

public class ProductDAO {
	public void insertData(ProductVO v) {
		// TODO Auto-generated method stub
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			session.save(v);
			
			tr.commit();
			System.out.println("done");
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	public List displayProduct(ProductVO v){
		List l1=new ArrayList();
		
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		
		Query q=session.createQuery("from ProductVO");
		l1=q.list();
		tr.commit();
		
		System.out.println("done?? from product");
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l1;
		// TODO Auto-generated method stub
		
		
		
	}
	

}
