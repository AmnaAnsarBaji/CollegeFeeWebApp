package com.servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.FeePaymentDAO;
import com.model.FeePayment;

@WebServlet("/UpdateFeePaymentServlet")
public class UpdateFeePaymentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int paymentID = Integer.parseInt(request.getParameter("paymentID"));
		int studentID = Integer.parseInt(request.getParameter("studentID"));
		String studentName = request.getParameter("studentName");
		String paymentDate = request.getParameter("paymentDate");
		double amount = Double.parseDouble(request.getParameter("amount"));
		String status = request.getParameter("status");

		FeePayment f = new FeePayment();

		f.setPaymentID(paymentID);
		f.setStudentID(studentID);
		f.setStudentName(studentName);
		f.setPaymentDate(paymentDate);
		f.setAmount(amount);
		f.setStatus(status);

		FeePaymentDAO dao = new FeePaymentDAO();
		dao.updatePayment(f);

		response.getWriter().println(
		"<html><body style='margin:0;font-family:Arial;background:#102b72;color:white;text-align:center;padding-top:180px;'>" +

		"<div style='background:white;color:black;width:500px;margin:auto;padding:40px;border-radius:20px;'>" +

		"<h1>Payment Updated Successfully</h1><br>" +

		"<a href='index.jsp' style='text-decoration:none;background:#2952cc;color:white;padding:14px 30px;border-radius:12px;font-weight:bold;'>Home</a>" +

		"</div></body></html>");
	}
}