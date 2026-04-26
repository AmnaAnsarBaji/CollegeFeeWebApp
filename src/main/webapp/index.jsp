<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>College Fee Payment System</title>

<style>
body{
margin:0;
padding:0;
font-family:Arial, sans-serif;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#081b3a,#243f8f);
}

.container{
width:560px;
padding:40px;
border-radius:25px;
background:rgba(255,255,255,0.15);
box-shadow:0 20px 40px rgba(0,0,0,0.35);
text-align:center;
color:white;
}

h1{
margin-bottom:10px;
font-size:48px;
}

p{
font-size:18px;
margin-bottom:35px;
color:#d8e6ff;
}

.grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:18px;
}

a{
text-decoration:none;
padding:16px;
border-radius:14px;
font-size:22px;
font-weight:bold;
color:white;
background:linear-gradient(to right,#13b7f2,#1778f2);
transition:0.3s;
}

a:hover{
transform:scale(1.05);
box-shadow:0 10px 20px rgba(0,0,0,0.25);
}
</style>
</head>

<body>






<div class="container">
<h1>College Fee Payment System</h1>
<p>Modern Stu
dent Payment Management Portal</p>

<div class="grid">
<a href="feepaymentadd.jsp">Add Payment</a>
<a href="DisplayFeePaymentsServlet">View Records</a>
<a href="feepaymentupdate.jsp">Update Payment</a>
<a href="reports.jsp">Reports</a>
<a href="feepaymentdelete.jsp">Delete Payment</a>
</div>

</div>

</body>

</html>