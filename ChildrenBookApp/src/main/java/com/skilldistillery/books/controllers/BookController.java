package com.skilldistillery.books.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.books.data.BookDAO;
import com.skilldistillery.books.entities.Book;

@Controller
public class BookController {

	@Autowired
	private BookDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String indexPage(Model model) {
		return "index";
	}
	
	@RequestMapping(path = "createBook.do")
	public String createBookPage(Model model) {
		return "createBook";
	}
	
	@RequestMapping(path = "searchById.do", method = RequestMethod.GET)
	public String searchById(Model model, int id) {
		List<Book> books = new ArrayList<>();
		books.add(dao.findById(id));
		model.addAttribute("books", books);		
		return "results";
	}

	@RequestMapping(path = "searchByKeyword.do", method = RequestMethod.GET)
	public String searchByKeyword(Model model, String keyword) {
		List<Book> books = dao.findByKeyword(keyword);
		model.addAttribute("keyword", keyword);
		model.addAttribute("books", books);		
		return "results";
	}

	@RequestMapping(path = "createBookForm.do", method = RequestMethod.POST)
	public String createBookPost(RedirectAttributes redir, Book book) {
		book = dao.createBook(book);
		boolean createdFlag = true;
		redir.addFlashAttribute("createFlag", createdFlag);
		redir.addFlashAttribute("book", book);
		return "redirect:createBookForm.do";
	}
	
	@RequestMapping(path = "createBookForm.do", method = RequestMethod.GET)
	public String createBookGet(Book book) {		
		return "modificationResults";
	}

	@RequestMapping(path = "deleteBook.do", method = RequestMethod.POST)
	public String deleteBookPost(RedirectAttributes redir, int id) {
		boolean deleteFlag = true;
		boolean containsFlag = dao.deleteBook(id);
		redir.addFlashAttribute("deleteFlag", deleteFlag);
		redir.addFlashAttribute("containsFlag", containsFlag);
		return "redirect:deleteBook.do";
	}
	
	@RequestMapping(path = "deleteBook.do", method = RequestMethod.GET)
	public String deleteBookGet(Book book) {		
		return "modificationResults";
	}
	
	
	
}
