<!-- reports.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports</title>

<style>
body{
margin:0;
font-family:Arial;
background:linear-gradient(135deg,#102b72,#1e3f95);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.card{
background:#f2f2f2;
padding:40px;
width:500px;
border-radius:20px;
text-align:center;
box-shadow:0 0 15px rgba(0,0,0,0.3);
}

h1{
color:#173a8a;
margin-bottom:30px;
}

a{
display:block;
text-decoration:none;
background:#2647a5;
color:white;
padding:15px;
margin:15px 0;
border-radius:10px;
font-size:30px;
font-weight:bold;
}

a:hover{
background:#173a8a;
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

<div class="card">

<h1>Reports</h1>

<a href="ReportServlet?type=overdue">Overdue Students</a>

<a href="report_form.jsp?type=range">Date Range Report</a>

<a href="report_form.jsp?type=unpaid">Unpaid Students</a>

<a href="index.jsp" class="home">Home</a>

</div>

</body>
</html>