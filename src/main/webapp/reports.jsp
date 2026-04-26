<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports</title>

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, Arial, sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#0f172a,#1e3a8a);
}

.container{
width:500px;
background:white;
padding:45px;
border-radius:20px;
box-shadow:0 20px 45px rgba(0,0,0,0.25);
text-align:center;
}

h1{
color:#1e3a8a;
margin-bottom:30px;
font-size:38px;
}

a{
display:block;
text-decoration:none;
background:#1e3a8a;
color:white;
padding:15px;
margin:15px 0;
border-radius:10px;
font-size:20px;
font-weight:bold;
transition:0.3s;
}

a:hover{
background:#2563eb;
transform:scale(1.03);
}
</style>

</head>
<body>

<div class="container">

<h1>Reports</h1>

<a href="ReportServlet">Overdue Students</a>

<a href="ReportCriteriaServlet">Date Range Collection</a>

<a href="index.jsp">Home</a>

</div>

</body>
</html>