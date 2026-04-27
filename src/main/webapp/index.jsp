<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>College Fee Payment System</title>

<style>
body{
margin:0;
font-family:Arial,sans-serif;
background:linear-gradient(135deg,#0b1d51,#27408b);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.container{
background:white;
padding:40px;
width:700px;
border-radius:25px;
text-align:center;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

h1{
color:#1f3fa3;
font-size:42px;
margin-bottom:10px;
}

p{
color:#555;
font-size:18px;
margin-bottom:30px;
}

.grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:15px;
}

a{
text-decoration:none;
background:#2952cc;
color:white;
padding:15px;
border-radius:12px;
font-size:20px;
font-weight:bold;
display:block;
}

a:hover{
background:#1f3fa3;
}
</style>

</head>

<body>

<div class="container">

<h1>College Fee Payment System</h1>

<p>Manage Student Payments Efficiently</p>

<div class="grid">

<a href="feepaymentadd.jsp">Add Payment</a>

<a href="DisplayFeePaymentsServlet">View Records</a>

<a href="feepaymentupdate.jsp">Update Payment</a>

<a href="feepaymentdelete.jsp">Delete Payment</a>

<a href="reports.jsp">Reports</a>

</div>

</div>

</body>
</html>