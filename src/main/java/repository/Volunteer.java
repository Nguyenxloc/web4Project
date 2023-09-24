package repository;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import antlr.JavaCodeGeneratorPrintWriterManager;
@Entity
@Table(name = "Volunteer2")
public class Volunteer implements Serializable {
	@Id
	@Column(name="Id",unique = true, nullable=false)
	@GenericGenerator(name="generator", strategy = "guid",parameters = {})
	@GeneratedValue(generator = "generator")
	private String  id;
	@Column(name="NameOfBud", length = 50)
	private String firstName;
	@Column(name="EmailAddress", length = 50)
	private String emailAddress;
	@Column(name="phone", length = 20)
	private String phone;
	@Column(name="Street", length = 20)
	private String street;
	@Column(name="City", length = 20)
	private String city;
	@Column(name="StateOfBud", length = 20)
	private String StateOfBud;
	@Column(name="Zip", length = 20)
	private String zip;
	@Column(name="ContactStt")
	private int contactStt;
	@Column(name="DayAttending", length = 20)
	private String dayAttending;
	@Column(name="ActivitiesAttending", length = 30)
	private String activitiesAttending;
	@Column(name="SpecicalRequirements", length = 200)
	private String speccialRequirements;
	@Column(name="SttOfLastYearConference")
	private int sttOfLastYearConference;
	public Volunteer() {
	    
		// TODO Auto-generated constructor stub
	}
	
	public Volunteer(String id, String firstName, String emailAddress, String phone, String street, String city,
			String stateOfBud, String zip, int contactStt, String dayAttending, String activitiesAttending,
			String speccialRequirements, int sttOfLastYearConference) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.emailAddress = emailAddress;
		this.phone = phone;
		this.street = street;
		this.city = city;
		StateOfBud = stateOfBud;
		this.zip = zip;
		this.contactStt = contactStt;
		this.dayAttending = dayAttending;
		this.activitiesAttending = activitiesAttending;
		this.speccialRequirements = speccialRequirements;
		this.sttOfLastYearConference = sttOfLastYearConference;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStateOfBud() {
		return StateOfBud;
	}
	public void setStateOfBud(String stateOfBud) {
		StateOfBud = stateOfBud;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public int getContactStt() {
		return contactStt;
	}
	public void setContactStt(int contactStt) {
		this.contactStt = contactStt;
	}
	public String getDayAttending() {
		return dayAttending;
	}
	public void setDayAttending(String dayAttending) {
		this.dayAttending = dayAttending;
	}
	public String getActivitiesAttending() {
		return activitiesAttending;
	}
	public void setActivitiesAttending(String activitiesAttending) {
		this.activitiesAttending = activitiesAttending;
	}
	public String getSpeccialRequirements() {
		return speccialRequirements;
	}
	public void setSpeccialRequirements(String speccialRequirements) {
		this.speccialRequirements = speccialRequirements;
	}
	public int getSttOfLastYearConference() {
		return sttOfLastYearConference;
	}
	public void setSttOfLastYearConference(int sttOfLastYearConference) {
		this.sttOfLastYearConference = sttOfLastYearConference;
	}

	@Override
	public String toString() {
		return "Volunteer [id=" + id + ", firstName=" + firstName + ", emailAddress=" + emailAddress + ", phone="
				+ phone + ", street=" + street + ", city=" + city + ", StateOfBud=" + StateOfBud + ", zip=" + zip
				+ ", contactStt=" + contactStt + ", dayAttending=" + dayAttending + ", activitiesAttending="
				+ activitiesAttending + ", speccialRequirements=" + speccialRequirements + ", sttOfLastYearConference="
				+ sttOfLastYearConference + "]";
	}
	


}
