<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Payment</title>

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
width:450px;
border-radius:25px;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
text-align:center;
}

h1{
color:#d62828;
margin-bottom:25px;
}

input{
width:90%;
padding:12px;
margin:15px;
font-size:16px;
border:1px solid #ccc;
border-radius:10px;
}

button{
background:#d62828;
color:white;
padding:14px 30px;
border:none;
border-radius:12px;
font-size:18px;
cursor:pointer;
font-weight:bold;
}

button:hover{
background:#a61e1e;
}

a{
display:block;
margin-top:20px;
text-decoration:none;
font-weight:bold;
color:#1f3fa3;
}
</style>

<script>
function confirmDelete(){
return confirm("Are you sure you want to delete this payment?");
}
</script>

</head>

<body>

<div class="container">

<h1>Delete Payment</h1>

<form action="DeleteFeePaymentServlet" method="post" onsubmit="return confirmDelete()">

<input type="number" name="paymentID" placeholder="Enter Payment ID" required>

<br><br>

<button type="submit">Delete Payment</button>

</form>

<a href="index.jsp">Back</a>

</div>

</body>
</html>