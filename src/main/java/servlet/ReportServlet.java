package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();

		double total = 0;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/collegefee",
					"root",
					"AmNa@@2606");

			PreparedStatement ps = con.prepareStatement(
					"SELECT SUM(Amount) FROM feepayments");

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				total = rs.getDouble(1);
			}

			con.close();

		} catch (Exception e) {
			out.println("<h2 style='color:red'>" + e + "</h2>");
		}

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Reports</title>");

		out.println("<style>");
		out.println("body{");
		out.println("margin:0;");
		out.println("padding:0;");
		out.println("font-family:Arial;");
		out.println("height:100vh;");
		out.println("display:flex;");
		out.println("justify-content:center;");
		out.println("align-items:center;");
		out.println("background:linear-gradient(135deg,#081b3a,#243f8f);");
		out.println("}");

		out.println(".box{");
		out.println("background:#ffffff;");
		out.println("width:520px;");
		out.println("padding:50px;");
		out.println("border-radius:25px;");
		out.println("text-align:center;");
		out.println("box-shadow:0 20px 40px rgba(0,0,0,0.30);");
		out.println("}");

		out.println("h1{");
		out.println("color:#1f3f96;");
		out.println("font-size:48px;");
		out.println("margin-bottom:40px;");
		out.println("}");

		out.println("h2{");
		out.println("font-size:62px;");
		out.println("color:#111;");
		out.println("margin-bottom:35px;");
		out.println("}");

		out.println("a{");
		out.println("text-decoration:none;");
		out.println("padding:15px 40px;");
		out.println("background:#2c4ec7;");
		out.println("color:white;");
		out.println("font-size:24px;");
		out.println("font-weight:bold;");
		out.println("border-radius:14px;");
		out.println("}");

		out.println("a:hover{");
		out.println("background:#17379f;");
		out.println("}");
		out.println("</style>");

		out.println("</head>");
		out.println("<body>");

		out.println("<div class='box'>");
		out.println("<h1>Total Collection</h1>");
		out.println("<h2>&#8377; " + String.format("%.0f", total) + "</h2>");
		out.println("<a href='index.jsp'>Back</a>");
		out.println("</div>");

		out.println("</body>");
		out.println("</html>");
	}
}