<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Payment</title>

<style>

body{
margin:0;
padding:0;
font-family:Arial,sans-serif;
background:linear-gradient(135deg,#0b1d51,#27408b);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.container{
background:#f2f2f2;
width:520px;
padding:40px;
border-radius:25px;
box-shadow:0 0 25px rgba(0,0,0,0.3);
text-align:center;
}

h1{
color:#1f3fa3;
font-size:60px;
margin-bottom:20px;
}

.datetime{
text-align:right;
font-size:16px;
font-weight:bold;
color:#1f3fa3;
margin-bottom:20px;
}

input,select{
width:100%;
padding:16px;
margin:12px 0;
font-size:17px;
border:1px solid #ccc;
border-radius:12px;
box-sizing:border-box;
}

button{
background:#2952cc;
color:white;
padding:15px 35px;
border:none;
border-radius:12px;
font-size:20px;
cursor:pointer;
font-weight:bold;
transition:0.3s;
}

button:hover{
background:#1f3fa3;
}

a{
display:block;
margin-top:25px;
text-decoration:none;
font-size:20px;
font-weight:bold;
color:#1f3fa3;
}

</style>

</head>

<body>

<div class="container">

<h1>Add Payment</h1>

<div class="datetime">

<span id="clock"></span>

<script>

function updateClock(){

let now = new Date();

let day = String(now.getDate()).padStart(2,'0');
let month = String(now.getMonth()+1).padStart(2,'0');
let year = now.getFullYear();

let hours = now.getHours();
let minutes = String(now.getMinutes()).padStart(2,'0');
let seconds = String(now.getSeconds()).padStart(2,'0');

let ampm = hours >= 12 ? 'PM' : 'AM';

hours = hours % 12;

hours = hours ? hours : 12;

hours = String(hours).padStart(2,'0');

document.getElementById("clock").innerHTML =

day + "-" + month + "-" + year + " " +

hours + ":" + minutes + ":" + seconds + " " + ampm;

}

setInterval(updateClock,1000);

updateClock();

</script>

</div>

<form action="AddFeePaymentServlet" method="post">

<input
type="number"
name="studentID"
placeholder="Enter Student ID"
required>

<input
type="text"
name="studentName"
placeholder="Enter Student Name"
required>

<input
type="hidden"
name="paymentDate"

value="<%= new java.text.SimpleDateFormat(
"yyyy-MM-dd").format(new java.util.Date()) %>">

<input
type="number"
step="0.01"
min="1"
name="amount"
placeholder="Enter Amount"
required>

<select name="status">

<option value="Paid">
Paid
</option>

<option value="Overdue">
Overdue
</option>

</select>

<br><br>

<button type="submit">
Add Payment
</button>

</form>

<a href="index.jsp">
Back
</a>

</div>

</body>

</html>