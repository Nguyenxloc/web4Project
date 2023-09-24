package javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import repository.ManageVolunteer;


/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/helloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HelloServlet() {
		super();
		// TODO Auto-generated constructor stub

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		manageStudent mng = new manageStudent();
//		String ox = mng.listEmployees();
//		String yourName = request.getParameter("yourName");
//		PrintWriter writer = response.getWriter();
//		writer.println("<h1>Hello " + ox + "</h1>");
//		writer.close();
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String eAddress = request.getParameter("eaddress");
		String phone = request.getParameter("phone");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String specialRequirement = request.getParameter("specialRequirement");
		String info = request.getParameter("info");
		int infoInt;
		if (info.equalsIgnoreCase("Yes"))
			infoInt = 1;
		else
			infoInt = 0;
		String mealOption = request.getParameter("MealOption");
		String day = request.getParameter("day");
		String activity = request.getParameter("activity");
		String sttOfLastYear = request.getParameter("contact");
		int sttOfLastYearInt;
		if (sttOfLastYear.equalsIgnoreCase("Yes"))
			sttOfLastYearInt = 1;
		else
			sttOfLastYearInt = 0;

		String Id = null;

		ManageVolunteer mngV = new ManageVolunteer();
		mngV.addVolunteer(name, eAddress, phone, street, city, state, zip, infoInt, day, activity,
				specialRequirement, sttOfLastYearInt);

		System.out.println("name:" + name + " EmailAddress:" + eAddress + " Phone: " + phone + "\n" + " Street: "
				+ street + " city: " + city + " state: " + state + "\n" + "Zip: " + zip + " info: " + info
				+ " mealOption: " + mealOption + "\n" + " day: " + day + " Activity:" + activity + " sttOfLastYear: "
				+ sttOfLastYear);

	}

//
}
