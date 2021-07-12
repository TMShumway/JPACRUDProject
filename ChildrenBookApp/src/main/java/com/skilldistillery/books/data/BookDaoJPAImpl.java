package com.skilldistillery.books.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.books.entities.Book;

@Service
@Transactional
public class BookDaoJPAImpl implements BookDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Book findById(int id) {
		return em.find(Book.class, id);
	}
	
	@Override
	public List<Book> findByKeyword(String keyword){
		List<Book> books = new ArrayList<>();
		String jpql = "SELECT b FROM Book b WHERE b.title LIKE :kw OR b.description LIKE :kw2";
		books = em.createQuery(jpql, Book.class).setParameter("kw", "%" + keyword + "%")
				  .setParameter("kw2", "%" + keyword + "%").getResultList();
		return books;
		
	}

	@Override
	public Book createBook(Book book) {
		
		em.persist(book);
		
		em.flush();
		return book;
	}

	@Override
	public boolean deleteBook(int id) {
		Book managedBook = em.find(Book.class, id);
		
		if(managedBook != null) {
			em.remove(managedBook);			
		}
		
	    boolean wasDeleted = !em.contains(managedBook);
		return wasDeleted;
	}
	
	@Override
	public Book updateBook(Book book) {
		Book managedBook = em.find(Book.class, book.getId());
		
		if(managedBook != null) {
			managedBook.setTitle(book.getTitle());
			managedBook.setAuthor(book.getAuthor());
			managedBook.setDescription(book.getDescription());
			managedBook.setPageCount(book.getPageCount());
			managedBook.setDifficultyLevel(book.getDifficultyLevel());
			managedBook.setCoverLink(book.getCoverLink());
			managedBook.setStoreLink(book.getStoreLink());
			managedBook.setIsbn(book.getIsbn());
		}
		
		return managedBook;
	}

	@Override
	public List<Book> findAllBooks(){
		List<Book> books = new ArrayList<>();
		String jpql = "SELECT b FROM Book b";
		books = em.createQuery(jpql, Book.class).getResultList();
		
		return books;
	}
}
