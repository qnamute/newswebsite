package newswebsite.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="post")
@Table(name="posts")
public class Post implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	private int id;
	private String title;
	private String summary;
	private String content;
	private String picture;
	private int view;
	private int user_id;
	private int category_id;	
	
	public Post() {
	}
	public Post(int id, String title, String summary, String content, String picture, int view, int user_id,
			int category_id) {
		this.id = id;
		this.title = title;
		this.summary = summary;
		this.content = content;
		this.picture = picture;
		this.view = view;
		this.user_id = user_id;
		this.category_id = category_id;
	}
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
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
}
