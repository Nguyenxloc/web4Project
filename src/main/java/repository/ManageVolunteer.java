package repository;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class ManageVolunteer {
	private static SessionFactory factory;
	public ManageVolunteer() {
		org.hibernate.cfg.Configuration cfg = new org.hibernate.cfg.Configuration();
		cfg.configure("hibernate.cfg.xml");
		factory = cfg.buildSessionFactory();
	}
	 public static void  addVolunteer(String name, String email, String phone,String street, String city,
			 String stateOfBud,String zip,int contactStt, String dayAttending,String activitiesAttending,
			 String specicalRequirements, int sttOfLastYearConference) {
	        Session session = factory.openSession();
	        Transaction tx = null;
	        try {
	             tx = session.beginTransaction();
	             Volunteer  volunteer = new Volunteer(null, name, email, phone, street, city, stateOfBud, zip, contactStt, dayAttending, activitiesAttending, specicalRequirements, sttOfLastYearConference);
	             session.save(volunteer);
	             tx.commit();
	        } catch (HibernateException e) {
	            if (tx != null)
	                tx.rollback();
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }
	 
	
}
