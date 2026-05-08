<%@ page import="java.sql.*" %>

<%

String paymentID = "";
String studentName = "";
String amount = "";
String status = "";

String id = request.getParameter("id");

if(id != null){

	try{

		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con = DriverManager.getConnection(

		"jdbc:mysql://localhost:3306/collegefee",

		"root",

		"AmNa@@2606"

		);

		PreparedStatement ps =
		con.prepareStatement(
		"select * from feepayments where PaymentID=?"
		);

		ps.setInt(1,Integer.parseInt(id));

		ResultSet rs = ps.executeQuery();

		if(rs.next()){

			paymentID = rs.getString("PaymentID");
			studentName = rs.getString("StudentName");
			amount = rs.getString("Amount");
			status = rs.getString("Status");

		}else{

			out.println(
			"<script>alert('Record ID does not exist');</script>"
			);

		}

		con.close();

	}catch(Exception e){

		out.println(e);

	}
}

%>

<html>

<head>

<title>Delete Payment</title>

<style>

body{
margin:0;
padding:0;
font-family:Arial;
background:linear-gradient(135deg,#102b72,#1e3c8f);
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.box{
background:#f2f2f2;
width:550px;
padding:40px;
border-radius:20px;
text-align:center;
box-shadow:0 0 20px rgba(0,0,0,0.3);
}

h1{
color:#d62828;
font-size:45px;
margin-bottom:30px;
}

input{
width:100%;
padding:15px;
margin:12px 0;
border-radius:10px;
border:1px solid #ccc;
font-size:17px;
box-sizing:border-box;
}

.details{
background:white;
padding:20px;
border-radius:15px;
margin-top:20px;
text-align:left;
font-size:20px;
line-height:40px;
}

.warning{
color:#d62828;
font-size:22px;
font-weight:bold;
margin-top:25px;
}

.fetchbtn{
background:#2952cc;
color:white;
padding:14px 30px;
border:none;
border-radius:10px;
font-size:18px;
font-weight:bold;
cursor:pointer;
}

.deletebtn{
background:#d62828;
color:white;
padding:15px 35px;
border:none;
border-radius:10px;
font-size:18px;
font-weight:bold;
cursor:pointer;
margin-top:20px;
}

a{
display:block;
margin-top:20px;
text-decoration:none;
font-size:18px;
font-weight:bold;
color:#102b72;
}

</style>

</head>

<body>

<div class="box">

<h1>Delete Payment</h1>

<%

if(paymentID.equals("")){

%>

<form method="get" action="feepaymentdelete.jsp">

<input type="number"
name="id"
placeholder="Enter Payment ID"
required>

<button type="submit"
class="fetchbtn">

Delete

</button>

</form>

<%

}

%>

<%

if(!paymentID.equals("")){

%>

<div class="details">

<b>Record ID :</b> <%=paymentID%>

<br>

<b>Student Name :</b> <%=studentName%>

<br>

<b>Amount :</b> Rs. <%=amount%>

<br>

<b>Status :</b> <%=status%>

</div>

<div class="warning">

Are you sure you want to delete this record?

</div>

<form action="DeleteFeePaymentServlet" method="post">

<input type="hidden"
name="paymentID"
value="<%=paymentID%>">

<input type="hidden"
name="studentName"
value="<%=studentName%>">

<button type="submit"
class="deletebtn">

Delete Payment

</button>

</form>

<%

}

%>

<a href="index.jsp">

Back

</a>

</div>

</body>

</html>