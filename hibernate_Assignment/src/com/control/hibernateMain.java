package com.control;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.servlet.Product;

public class hibernateMain {
	
	public static Session connection()
	{
		//Create configuration object
		Configuration con=new Configuration().configure();
		
		//Load meta Information
		con.addAnnotatedClass(com.servlet.Product.class);
		
		StandardServiceRegistryBuilder builder=
				new StandardServiceRegistryBuilder().applySettings(con.getProperties());
		
		//Create Session factory object
		SessionFactory factory =con.buildSessionFactory(builder.build());
		
		//Make hibernate API call on session object
		Session sf=factory.openSession();
		
		return sf;
	}
	
	
	public void insert(Product p)
	{
		System.out.println("Connection to mysql through hibernate");
		Session session=hibernateMain.connection();
		
		Transaction tx=session.beginTransaction();
		
		session.save(p);
		tx.commit();
	    System.out.println("record inserted");
	    session.close();
			
	}
	
	public List<Product> viewProduct()
	{
		Session session=hibernateMain.connection();
		
		Transaction tx=session.beginTransaction();
		
		Query query=session.createQuery("from Product");
		
		List<Product> result=query.list();
		
		return result;
	}
	
	public List<Product> viewPerticular(String pid)
	{

			Session session=hibernateMain.connection();
			
			Transaction tx=session.beginTransaction();
			
			Query query=session.createQuery("from Product where ProductId=:pid");
			
			query.setString("pid", pid);
			
			List<Product> result=query.list();
			
			return result;
	
	}
	
	
	public int Edit(String id,String price,String quantity,String discount)
	{

		Session session=hibernateMain.connection();
		Transaction tx=session.beginTransaction();
		
		System.out.println(id);
		
		//Fire update query here to change product price
		Query query=session.createQuery("update Product set Price=:price,Quantity=:quantity,Discount=:discount where ProductId=:pid");
//		Query query=session.createQuery("delete from Product where ProductId=:pid");
		
		//"update User set name=:n where id=:i");update Employee set age=:age where name=:name
		
		//,Quantity=:quantity,Discount=:discount
		
		query.setString("price", price);
		query.setString("quantity",quantity);
		query.setString("discount", discount);
		query.setString("pid", id);
		
		int result=query.executeUpdate();
		tx.commit();  
		
		System.out.println(result);
		
		return result;
		
		
	}

	
	public int delete(String id)
	{
		Session session=hibernateMain.connection();
		Transaction tx=session.beginTransaction();
		
		Query query=session.createQuery("delete from Product where ProductId=:pid");
		
		query.setString("pid", id);
		
		int result=query.executeUpdate();
		
		return result;
	}
}
