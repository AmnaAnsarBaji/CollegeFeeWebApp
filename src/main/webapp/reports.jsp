<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports</title>

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
width:550px;
border-radius:25px;
text-align:center;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

h1{
color:#1f3fa3;
margin-bottom:25px;
font-size:42px;
}

a{
display:block;
text-decoration:none;
background:#2952cc;
color:white;
padding:15px;
margin:15px 0;
border-radius:12px;
font-size:22px;
font-weight:bold;
}

a:hover{
background:#1f3fa3;
}

.home{
background:#28a745;
}

.home:hover{
background:#1d7d33;
}
</style>

</head>

<body>

<div class="container">

<h1>Reports</h1>

<a href="ReportServlet?type=overdue">Overdue Students</a>

<a href="report_form.jsp?type=range">Date Range Collection</a>

<a href="report_form.jsp?type=unpaid">Unpaid Students</a>

<a href="index.jsp" class="home">Home</a>

</div>

</body>
</html>