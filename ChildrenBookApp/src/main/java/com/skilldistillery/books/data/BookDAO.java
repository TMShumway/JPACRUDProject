package com.skilldistillery.books.data;

import java.util.List;

import com.skilldistillery.books.entities.Book;

public interface BookDAO {

	Book findById(int id);
	List<Book> findByKeyword(String string);
	Book createBook(Book book);
	boolean deleteBook(int id);
	Book updateBook(Book book);
	
}
