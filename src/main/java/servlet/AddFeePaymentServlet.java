package servlet;

import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.http.*;
import java.sql.*;
import dao.FeePaymentDAO;

@WebServlet("/AddFeePaymentServlet")
public class AddFeePaymentServlet extends HttpServlet {

protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws IOException {

res.setContentType("text/html");
PrintWriter out = res.getWriter();

try {

Connection con = new FeePaymentDAO().getConnect();

PreparedStatement ps = con.prepareStatement(
"insert into FeePayments(StudentID,StudentName,PaymentDate,Amount,Status) values(?,?,?,?,?)");

ps.setInt(1, Integer.parseInt(req.getParameter("sid")));
ps.setString(2, req.getParameter("sname"));
ps.setDate(3, Date.valueOf(req.getParameter("pdate")));
ps.setDouble(4, Double.parseDouble(req.getParameter("amount")));
ps.setString(5, req.getParameter("status"));

ps.executeUpdate();

req.setAttribute("msg","Payment Added Successfully");
req.getRequestDispatcher("report_result.jsp").forward(req,res);

con.close();

}
catch(Exception e){
out.println(e);
}

}
}