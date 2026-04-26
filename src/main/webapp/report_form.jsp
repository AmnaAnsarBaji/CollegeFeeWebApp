<!-- report_form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date Range Collection</title>

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
}

body{
font-family:Segoe UI, Arial, sans-serif;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#08142b,#233f99);
}

.box{
background:white;
padding:45px;
width:500px;
border-radius:22px;
box-shadow:0 18px 40px rgba(0,0,0,0.25);
text-align:center;
}

h1{
color:#1e3c8f;
margin-bottom:30px;
font-size:42px;
}

label{
display:block;
text-align:left;
font-size:18px;
font-weight:600;
margin-top:15px;
margin-bottom:8px;
color:#222;
}

input[type=date]{
width:100%;
padding:14px;
font-size:17px;
border:1px solid #ccc;
border-radius:10px;
outline:none;
margin-bottom:10px;
}

input[type=date]:focus{
border:1px solid #1e3c8f;
}

button{
width:100%;
padding:15px;
margin-top:20px;
background:#1e3c8f;
color:white;
border:none;
font-size:18px;
font-weight:bold;
border-radius:12px;
cursor:pointer;
transition:0.3s;
}

button:hover{
background:#142a66;
transform:translateY(-2px);
}

a{
display:inline-block;
margin-top:18px;
text-decoration:none;
color:#1e3c8f;
font-weight:bold;
}

a:hover{
text-decoration:underline;
}
</style>

</head>

<body>

<div class="box">

<h1>Date Range</h1>

<form action="ReportCriteriaServlet" method="post">

<label>From Date</label>
<input type="date" name="fromDate" required>

<label>To Date</label>
<input type="date" name="toDate" required>

<button type="submit">Generate Report</button>

</form>

<a href="reports.jsp">Back</a>

</div>

</body>
</html>