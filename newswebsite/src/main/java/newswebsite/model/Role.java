package newswebsite.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity(name="roles")
@Table(name="roles")
public class Role implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
    private int ID;
    private String name_role;       
    
	public Role() {
	}
	public Role(int iD, String name_role) {
		ID = iD;
		name_role = name_role;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getname_role() {
		return name_role;
	}
	public void setname_role(String _name_role) {
		name_role = _name_role;
	}
}
