package com.skilldistillery.books.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String title;
	
	private String author;
	
	@Column(name = "page_count")
	private int pageCount;
		
	@Column(name = "ISBN")
	private String isbn;
	
	@Column(name = "difficulty_level")
	private int difficultyLevel;
	
	private String description;
	
	@Column(name = "store_link")
	private String storeLink;
	
	@Column(name = "cover_link")
	private String coverLink;
	
	public Book() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public int getDifficultyLevel() {
		return difficultyLevel;
	}

	public void setDifficultyLevel(int difficultyLevel) {
		this.difficultyLevel = difficultyLevel;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStoreLink() {
		return storeLink;
	}

	public void setStoreLink(String storeLink) {
		this.storeLink = storeLink;
	}

	public String getCoverLink() {
		return coverLink;
	}

	public void setCoverLink(String coverLink) {
		this.coverLink = coverLink;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Book [id=").append(id).append(", title=").append(title).append(", author=").append(author)
				.append(", pageCount=").append(pageCount).append(", isbn=").append(isbn).append(", difficultyLevel=")
				.append(difficultyLevel).append(", description=").append(description).append(", storeLink=")
				.append(storeLink).append(", coverLink=").append(coverLink).append("]");
		return builder.toString();
	}
	
	
	
}
