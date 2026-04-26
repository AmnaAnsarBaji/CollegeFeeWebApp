<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Delete Payment</title>

<style>
body{
margin:0;
font-family:Arial;
background:linear-gradient(135deg,#0f172a,#1e3a8a);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.card{
background:white;
padding:40px;
width:420px;
border-radius:18px;
box-shadow:0 15px 40px rgba(0,0,0,0.25);
text-align:center;
}

h1{
color:#1e3a8a;
margin-bottom:25px;
}

input{
width:100%;
padding:12px;
margin:12px 0;
border:1px solid #ccc;
border-radius:10px;
font-size:16px;
}

button,a{
display:block;
width:100%;
padding:12px;
margin-top:12px;
border:none;
border-radius:10px;
font-size:16px;
font-weight:bold;
text-decoration:none;
cursor:pointer;
}

button{
background:#dc2626;
color:white;
}

button:hover{
background:#991b1b;
}

a{
background:#1e3a8a;
color:white;
}

a:hover{
background:#0f172a;
}
</style>
</head>

<body>

<div class="card">

<h1>Delete Fee Payment</h1>

<form action="DeleteFeePaymentServlet" method="post">

<input type="number" name="paymentId" placeholder="Enter Payment ID" required>

<button type="submit">Delete Payment</button>

</form>

<a href="index.jsp">Home</a>

</div>

</body>
</html>