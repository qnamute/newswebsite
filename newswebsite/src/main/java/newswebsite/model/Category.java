package newswebsite.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="category")
@Table(name="categories")
public class Category implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ID;
	private String name_cate;
	public Category() {
		
	}
	public Category(int id, String name_cate) {
		super();
		this.ID = id;
		this.name_cate = name_cate;
	}
	public int getId() {
		return ID;
	}
	public void setId(int id) {
		this.ID = id;
	}
	public String getName_cate() {
		return name_cate;
	}
	public void setName_cate(String name_cate) {
		this.name_cate = name_cate;
	}
	
}
