<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Fee Payment</title>

<style>
body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(135deg,#141e30,#243b55);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.box{
    background:white;
    padding:40px;
    width:420px;
    border-radius:18px;
    box-shadow:0 15px 35px rgba(0,0,0,0.25);
}

h2{
    text-align:center;
    color:#243b55;
    margin-bottom:25px;
}

input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:10px;
    font-size:15px;
}

button{
    width:100%;
    padding:12px;
    background:#0072ff;
    color:white;
    border:none;
    border-radius:10px;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
}

button:hover{
    background:#0056cc;
}

a{
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    color:#0072ff;
    font-weight:bold;
}
</style>
</head>

<body>

<div class="box">

<h2>Update Fee Payment</h2>

<form action="UpdateFeePaymentServlet" method="post">

<input type="text" name="paymentId" placeholder="Enter Payment ID" required>

<input type="text" name="amount" placeholder="Enter New Amount" required>

<button type="submit">Update Payment</button>

</form>

<a href="index.jsp">Home</a>

</div>

</body>
</html>