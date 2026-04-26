<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Fee Payment</title>

<style>
body{
margin:0;
font-family:Arial;
background:linear-gradient(to right,#1e3c72,#2a5298);
}

.box{
width:450px;
margin:60px auto;
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 0 15px gray;
}

h2{
text-align:center;
color:#1e3c72;
margin-bottom:25px;
}

input,select{
width:100%;
padding:10px;
margin-top:5px;
margin-bottom:15px;
border:1px solid #ccc;
border-radius:8px;
}

button{
width:100%;
padding:12px;
background:#1e3c72;
color:white;
border:none;
border-radius:8px;
font-size:16px;
cursor:pointer;
}

button:hover{
background:#16325c;
}

a{
display:block;
text-align:center;
margin-top:15px;
text-decoration:none;
color:#1e3c72;
font-weight:bold;
}
</style>

</head>
<body>

<div class="box">

<h2>Add Fee Payment</h2>

<form action="AddFeePaymentServlet" method="post">

Student ID
<input type="text" name="sid" required>

Student Name
<input type="text" name="sname" required>

Payment Date
<input type="date" name="pdate" required>

Amount
<input type="text" name="amount" required>

Status
<select name="status">
<option value="Paid">Paid</option>
<option value="Overdue">Overdue</option>
</select>

<button type="submit">Add Payment</button>

</form>

<a href="index.jsp">Home</a>

</div>

</body>
</html>