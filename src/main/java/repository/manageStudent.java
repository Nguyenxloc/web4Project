package repository;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class manageStudent {
	private static SessionFactory factory;
	public manageStudent() {
		org.hibernate.cfg.Configuration cfg = new org.hibernate.cfg.Configuration();
		cfg.configure("hibernate.cfg.xml");
		factory = cfg.buildSessionFactory();
	}
	public static void main(String[] args) {
		org.hibernate.cfg.Configuration cfg = new org.hibernate.cfg.Configuration();
		cfg.configure("hibernate.cfg.xml");
		factory = cfg.buildSessionFactory();
		manageStudent mng = new manageStudent();
        Integer stuID1 = mng.addStudent("David", "Bishop","IT");
        Integer	stuID2 = mng.addStudent("Chris", "Ali","Marketing");
        Integer	stuID3 = mng.addStudent("John", "Vector","Physics");
        System.out.println("===================================");
        System.out.println("list down all student");
        mng.listEmployees();
	}
    public static Integer addStudent(String fname, String lname, String field) {
        Session session = factory.openSession();
        Transaction tx = null;
        Integer studentID = null;
        try {
            tx = session.beginTransaction();
             Student student = new Student(fname, lname, field);
             studentID = (Integer) session.save(student);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null)
                tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return studentID;
    }
 
    // Method to READ all the employees
    public String listEmployees() {
        Session session = factory.openSession();
        String ox = null;
        try {
            List employees = session.createQuery("FROM Student").list();
            for (Iterator iterator = employees.iterator(); iterator.hasNext();) {
                Student student = (Student) iterator.next();
                System.out.print("First Name: " + student.getFirstName());
                System.out.print("  Last Name: " + student.getLastName());
                System.out.println("  Salary: " + student.getField());
                ox = student.getFirstName(); 
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return ox;
    }
 
    // Method to UPDATE salary for an employee
    public void updateEmployee(Integer studentID, String field) {
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Student student = (Student) session.get(Student.class,studentID);
            student.setField(field);
            session.update(student);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null)
                tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
 
    // Method to DELETE an employee from the records
    public void deleteEmployee(Integer studentID) {
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Student student = (Student) session.get(Student.class, studentID);
            session.delete(student);
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
