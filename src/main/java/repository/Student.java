package repository;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "student")
public  class Student implements Serializable{
	@Id
    @Column(name = "id", unique = true, nullable = false)
	@GeneratedValue
    private Integer id;
	@Column(name = "first_name", length = 20)
    private String firstName;
	@Column(name = "last_name", length = 20)
    private String lastName;
	@Column(name = "field")
    private String field;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}
		
	public Student(String firstName, String lastName, String field) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.field = field;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	@Override
	public String toString() {
		return "student [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", field=" + field + "]";
	}
	
}
