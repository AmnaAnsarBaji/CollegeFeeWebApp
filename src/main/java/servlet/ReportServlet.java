package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String type = request.getParameter("type");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/collegefee",
					"root",
					"AmNa@@2606");

			// ---------------- OVERDUE STUDENTS ----------------
			if ("overdue".equals(type)) {

				PreparedStatement ps = con.prepareStatement(
						"SELECT * FROM feepayments WHERE Status='Overdue'");

				ResultSet rs = ps.executeQuery();

				out.println("<html><body style='margin:0;font-family:Arial;background:#102b72;color:white;'>");
				out.println("<div style='padding:40px;'>");
				out.println("<h1>Overdue Students</h1>");

				out.println("<table border='1' cellpadding='10' cellspacing='0' style='border-collapse:collapse;background:white;color:black;'>");
				out.println("<tr><th>ID</th><th>Name</th><th>Amount</th><th>Status</th></tr>");

				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getInt("StudentID") + "</td>");
					out.println("<td>" + rs.getString("StudentName") + "</td>");
					out.println("<td>" + rs.getDouble("Amount") + "</td>");
					out.println("<td>" + rs.getString("Status") + "</td>");
					out.println("</tr>");
				}

				out.println("</table><br>");
				out.println("<a href='reports.jsp' style='color:white;font-size:22px;'>Back</a>");
				out.println("</div></body></html>");
			}

			// ---------------- DATE RANGE COLLECTION ----------------
			else if ("range".equals(type)) {

				String fromDate = request.getParameter("fromDate");
				String toDate = request.getParameter("toDate");

				PreparedStatement ps = con.prepareStatement(
						"SELECT SUM(Amount) FROM feepayments WHERE PaymentDate BETWEEN ? AND ?");

				ps.setString(1, fromDate);
				ps.setString(2, toDate);

				ResultSet rs = ps.executeQuery();

				double total = 0;

				if (rs.next()) {
					total = rs.getDouble(1);
				}

				out.println("<html><body style='margin:0;font-family:Arial;background:#102b72;color:white;'>");
				out.println("<div style='width:500px;margin:120px auto;background:#f2f2f2;color:black;padding:40px;border-radius:20px;text-align:center;'>");

				out.println("<h1 style='color:#173a8a;'>Total Collection</h1>");
				out.println("<h3>From: " + fromDate + "</h3>");
				out.println("<h3>To: " + toDate + "</h3>");
				out.println("<h1>₹ " + total + "</h1><br>");

				out.println("<a href='reports.jsp' style='text-decoration:none;background:#2647a5;color:white;padding:12px 30px;border-radius:10px;'>Back</a>");

				out.println("</div></body></html>");
			}

			// ---------------- UNPAID STUDENTS ----------------
			else if ("unpaid".equals(type)) {

				String fromDate = request.getParameter("fromDate");
				String toDate = request.getParameter("toDate");

				PreparedStatement ps = con.prepareStatement(
						"SELECT * FROM feepayments WHERE Status <> 'Paid' AND PaymentDate BETWEEN ? AND ?");

				ps.setString(1, fromDate);
				ps.setString(2, toDate);

				ResultSet rs = ps.executeQuery();

				out.println("<html><body style='margin:0;font-family:Arial;background:#102b72;color:white;'>");
				out.println("<div style='padding:40px;'>");

				out.println("<h1>Unpaid Students</h1>");

				out.println("<table border='1' cellpadding='10' cellspacing='0' style='border-collapse:collapse;background:white;color:black;'>");
				out.println("<tr><th>ID</th><th>Name</th><th>Date</th><th>Amount</th><th>Status</th></tr>");

				boolean found = false;

				while (rs.next()) {
					found = true;

					out.println("<tr>");
					out.println("<td>" + rs.getInt("StudentID") + "</td>");
					out.println("<td>" + rs.getString("StudentName") + "</td>");
					out.println("<td>" + rs.getString("PaymentDate") + "</td>");
					out.println("<td>" + rs.getDouble("Amount") + "</td>");
					out.println("<td>" + rs.getString("Status") + "</td>");
					out.println("</tr>");
				}

				out.println("</table><br>");

				if (!found) {
					out.println("<h2>No unpaid students found.</h2>");
				}

				out.println("<a href='reports.jsp' style='color:white;font-size:22px;'>Back</a>");

				out.println("</div></body></html>");
			}

			con.close();

		} catch (Exception e) {
			out.println(e);
		}
	}
}