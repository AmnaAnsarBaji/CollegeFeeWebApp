package com.dao;

import java.sql.*;

import com.model.FeePayment;

public class FeePaymentDAO {

	Connection con;

	public FeePaymentDAO() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/collegefee",
					"root",
					"AmNa@@2606");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ADD
	public void addPayment(FeePayment f) {

		try {

			PreparedStatement ps = con.prepareStatement(
			"INSERT INTO feepayments(StudentID,StudentName,PaymentDate,Amount,Status) VALUES(?,?,?,?,?)");

			ps.setInt(1, f.getStudentID());
			ps.setString(2, f.getStudentName());
			ps.setString(3, f.getPaymentDate());
			ps.setDouble(4, f.getAmount());
			ps.setString(5, f.getStatus());

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// UPDATE
	public void updatePayment(FeePayment f) {

		try {

			PreparedStatement ps = con.prepareStatement(
			"UPDATE feepayments SET StudentID=?, StudentName=?, PaymentDate=?, Amount=?, Status=? WHERE PaymentID=?");

			ps.setInt(1, f.getStudentID());
			ps.setString(2, f.getStudentName());
			ps.setString(3, f.getPaymentDate());
			ps.setDouble(4, f.getAmount());
			ps.setString(5, f.getStatus());
			ps.setInt(6, f.getPaymentID());

			int rows = ps.executeUpdate();

			System.out.println("Updated Rows = " + rows);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DELETE
	public void deletePayment(int id) {

		try {

			PreparedStatement ps = con.prepareStatement(
			"DELETE FROM feepayments WHERE PaymentID=?");

			ps.setInt(1, id);

			int rows = ps.executeUpdate();

			System.out.println("Deleted Rows = " + rows);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}