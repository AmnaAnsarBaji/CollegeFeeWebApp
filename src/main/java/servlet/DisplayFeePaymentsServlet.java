package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.FeePaymentDAO;

@WebServlet("/DisplayFeePaymentsServlet")
public class DisplayFeePaymentsServlet extends HttpServlet {

protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws IOException {

res.setContentType("text/html");
PrintWriter out = res.getWriter();

try{

Connection con = new FeePaymentDAO().getConnect();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from FeePayments");

out.println("<html><head><title>Display</title>");
out.println("<style>");
out.println("body{font-family:Arial;background:linear-gradient(to right,#1e3c72,#2a5298);}");
out.println("table{width:90%;margin:auto;background:white;border-collapse:collapse;margin-top:50px;}");
out.println("th,td{padding:12px;border:1px solid gray;text-align:center;}");
out.println("th{background:#1e3c72;color:white;}");
out.println("h2{text-align:center;color:white;margin-top:30px;}");
out.println("a{display:block;text-align:center;color:white;margin-top:20px;font-size:20px;text-decoration:none;}");
out.println("</style></head><body>");

out.println("<h2>Fee Payment Records</h2>");

out.println("<table>");
out.println("<tr>");
out.println("<th>Payment ID</th>");
out.println("<th>Student ID</th>");
out.println("<th>Name</th>");
out.println("<th>Date</th>");
out.println("<th>Amount</th>");
out.println("<th>Status</th>");
out.println("</tr>");

while(rs.next()){

out.println("<tr>");
out.println("<td>"+rs.getInt(1)+"</td>");
out.println("<td>"+rs.getInt(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getDate(4)+"</td>");
out.println("<td>"+rs.getDouble(5)+"</td>");
out.println("<td>"+rs.getString(6)+"</td>");
out.println("</tr>");

}

out.println("</table>");

out.println("<a href='index.jsp'>Home</a>");

out.println("</body></html>");

con.close();

}catch(Exception e){
out.println(e);
}

}
}