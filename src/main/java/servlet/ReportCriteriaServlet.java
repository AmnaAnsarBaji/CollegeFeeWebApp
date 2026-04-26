// ReportCriteriaServlet.java

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

@WebServlet("/ReportCriteriaServlet")
public class ReportCriteriaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();

        String fromDate = request.getParameter("fromDate");
        String toDate   = request.getParameter("toDate");

        double total = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/collegefee",
                    "root",
                    "AmNa@@2606"
            );

            PreparedStatement ps = con.prepareStatement(
                "SELECT SUM(Amount) FROM feepayments WHERE PaymentDate BETWEEN ? AND ?"
            );

            ps.setString(1, fromDate);
            ps.setString(2, toDate);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getDouble(1);
            }

            con.close();

        } catch (Exception e) {
            out.println("<h3 style='color:red;'>" + e + "</h3>");
        }

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Date Range Report</title>");
        out.println("<style>");

        out.println("body{");
        out.println("margin:0;");
        out.println("font-family:Segoe UI,Arial,sans-serif;");
        out.println("background:linear-gradient(135deg,#08142b,#233f99);");
        out.println("height:100vh;");
        out.println("display:flex;");
        out.println("justify-content:center;");
        out.println("align-items:center;");
        out.println("}");

        out.println(".box{");
        out.println("background:white;");
        out.println("padding:50px;");
        out.println("border-radius:20px;");
        out.println("box-shadow:0 15px 35px rgba(0,0,0,0.25);");
        out.println("text-align:center;");
        out.println("width:500px;");
        out.println("}");

        out.println("h1{color:#1e3c8f;margin-bottom:25px;}");

        out.println("h2{font-size:42px;color:#111;margin:20px 0;}");

        out.println("p{font-size:22px;margin:15px;}");

        out.println("a{");
        out.println("display:inline-block;");
        out.println("margin-top:20px;");
        out.println("padding:12px 35px;");
        out.println("background:#1e3c8f;");
        out.println("color:white;");
        out.println("text-decoration:none;");
        out.println("border-radius:10px;");
        out.println("font-weight:bold;");
        out.println("}");

        out.println("a:hover{background:#142a66;}");

        out.println("</style>");
        out.println("</head>");

        out.println("<body>");

        out.println("<div class='box'>");
        out.println("<h1>Total Collection</h1>");
        out.println("<p>From: <b>" + fromDate + "</b></p>");
        out.println("<p>To: <b>" + toDate + "</b></p>");
        out.println("<h2>&#8377; " + total + "</h2>");
        out.println("<a href='reports.jsp'>Back</a>");
        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}