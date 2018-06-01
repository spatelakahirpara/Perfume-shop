package controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.ProductVO;

public class Trial {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ProductVO p= new ProductVO();
		p.setP_id(3);
		p.setProduct_name("spell love");
		p.setProduct_desc("good");
		p.setProduct_price("30");
		p.setProduct_image("img3");
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.save(p);
		tr.commit();
		System.out.println("done");
		
		
		

	}

}
