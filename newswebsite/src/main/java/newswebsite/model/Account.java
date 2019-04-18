package newswebsite.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Quang Nam
 *
 */
@Entity(name="accounts")
@Table(name="account")
public class Account implements Serializable  {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	@Column(name = "ID")
    private int ID;
	@Column(name = "user_name")
	private String user_name;
	@Column(name = "Pass")
	private String Pass;
	@Column(name = "full_name")
	private String full_name;
	@Column(name = "Address")
	private String Address;
	@Column(name = "number_phone")
	private int number_phone;
	@ManyToOne
	    @JoinColumn(name="Roles")
	 	private Role Roles;
	
	public Account() {
	}

	public Account(int iD, String user_name, String pass, String full_name, String address, int number_phone, Role roles) {
		super();
		ID = iD;
		this.user_name = user_name;
		Pass = pass;
		this.full_name = full_name;
		Address = address;
		this.number_phone = number_phone;
		Roles = roles;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getuser_name() {
		return user_name;
	}

	public void setuser_name(String _user_name) {
		user_name = _user_name;
	}

	public String getPass() {
		return Pass;
	}

	public void setPass(String pass) {
		Pass = pass;
	}

	public String getfull_name() {
		return full_name;
	}

	public void setfull_name(String _full_name) {
		full_name = _full_name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public int getnumber_phone() {
		return number_phone;
	}

	public void setnumber_phone(int _number_phone) {
		number_phone = _number_phone;
	}

	public Role getRoles() {
		return Roles;
	}

	public void setRoles(Role roles) {
		Roles = roles;
	}
}
