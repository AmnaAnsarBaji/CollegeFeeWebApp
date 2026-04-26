package servlet;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import dao.FeePaymentDAO;

@WebServlet("/UpdateFeePaymentServlet")
public class UpdateFeePaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            int id = Integer.parseInt(request.getParameter("paymentId"));
            double amount = Double.parseDouble(request.getParameter("amount"));

            Connection con = new FeePaymentDAO().getConnect();

            PreparedStatement ps =
                    con.prepareStatement("update feepayments set Amount=? where PaymentID=?");

            ps.setDouble(1, amount);
            ps.setInt(2, id);

            int i = ps.executeUpdate();

            out.println("<html><head><title>Update Payment</title>");
            out.println("<style>");
            out.println("body{margin:0;font-family:Arial;background:linear-gradient(135deg,#0f172a,#1e3a8a);height:100vh;display:flex;justify-content:center;align-items:center;color:white;}");
            out.println(".box{background:white;color:#111827;padding:40px;border-radius:18px;width:420px;text-align:center;box-shadow:0 15px 40px rgba(0,0,0,0.25);}");
            out.println("h1{margin-top:0;color:#1e3a8a;}");
            out.println(".msg{font-size:20px;font-weight:bold;margin:20px 0;}");
            out.println("a{display:inline-block;margin-top:18px;padding:12px 26px;background:#1e3a8a;color:white;text-decoration:none;border-radius:10px;font-weight:bold;}");
            out.println("a:hover{background:#0f172a;}");
            out.println("</style></head><body>");

            out.println("<div class='box'>");
            out.println("<h1>Fee Payment System</h1>");

            if (i > 0)
                out.println("<div class='msg'>Payment Updated Successfully</div>");
            else
                out.println("<div class='msg'>Payment ID Not Found</div>");

            out.println("<a href='index.jsp'>Home</a>");
            out.println("</div></body></html>");

            con.close();

        } catch (Exception e) {
            out.println(e);
        }
    }
}