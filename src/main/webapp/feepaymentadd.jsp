<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Payment</title>

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
width:500px;
border-radius:25px;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
text-align:center;
}

h1{
color:#1f3fa3;
margin-bottom:25px;
}

input,select{
width:90%;
padding:12px;
margin:10px;
font-size:16px;
border:1px solid #ccc;
border-radius:10px;
}

button{
background:#2952cc;
color:white;
padding:14px 30px;
border:none;
border-radius:12px;
font-size:18px;
cursor:pointer;
font-weight:bold;
}

button:hover{
background:#1f3fa3;
}

a{
display:block;
margin-top:20px;
text-decoration:none;
font-weight:bold;
color:#1f3fa3;
}
</style>

</head>

<body>

<div class="container">

<h1>Add Payment</h1>

<form action="AddFeePaymentServlet" method="post">

<input type="text" value="Payment ID Auto Generated" readonly>

<input type="number" name="studentID" placeholder="Student ID" required>

<input type="text" name="studentName" placeholder="Student Name" required>

<input type="date" name="paymentDate" required>

<input type="number" step="0.01" min="1" name="amount" placeholder="Amount" required>

<select name="status">
<option>Paid</option>
<option>Overdue</option>
<option>Unpaid</option>
</select>

<br><br>

<button type="submit">Add Payment</button>

</form>

<a href="index.jsp">Back</a>

</div>

</body>
</html>