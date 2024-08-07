package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configuration.HibernateConfiguration;
import com.entity.Book;

public class BookDao {
	public static boolean save(Book book){
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction trans=session.beginTransaction();
		session.save(book);
		trans.commit();
		session.close();
		return false;
	}
	public static List<Book> getBooks(){
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		return session.createQuery("From Book",Book.class).list();
		
	}
	public static void delete(int bookId) {
        Session session = HibernateConfiguration.getSessionFactory().openSession();
        Transaction trans = null;
        
        try {
            trans = session.beginTransaction();
            Book book = session.get(Book.class, bookId);
            if (book != null) {
                session.delete(book);
                System.out.println("Book deleted successfully.");
            } else {
                System.out.println("Book with id " + bookId + " not found.");
            }
            trans.commit();
        } catch (Exception e) {
            if (trans != null) {
                trans.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
	public static boolean update(Book book){
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction trans=session.beginTransaction();
		session.update(book);
		trans.commit();
		session.close();
		return false;
	}
	public static void deleteBook(int bid){
		Transaction trans=null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		trans = session.beginTransaction();
		Book book = session.get(Book.class, bid)	;
		if(book!=null){
			session.delete(book);
		}
		trans.commit();
	}
}
