<!-- report_form.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Date Range</title>

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
width:450px;
border-radius:20px;
text-align:center;
box-shadow:0 0 15px rgba(0,0,0,0.3);
}

h1{
color:#173a8a;
margin-bottom:25px;
}

input{
padding:12px;
width:80%;
margin:10px;
font-size:18px;
}

button{
background:#2647a5;
color:white;
padding:12px 25px;
border:none;
border-radius:10px;
font-size:20px;
cursor:pointer;
}

button:hover{
background:#173a8a;
}

a{
display:block;
margin-top:20px;
text-decoration:none;
font-weight:bold;
color:#173a8a;
}
</style>

</head>
<body>

<div class="card">

<%
String type = request.getParameter("type");
if(type==null)
type="range";
%>

<h1>Select Date Range</h1>

<form action="ReportCriteriaServlet" method="get">

<input type="hidden" name="type" value="<%=type%>">

<label>From Date</label><br>
<input type="date" name="fromDate" required><br>

<label>To Date</label><br>
<input type="date" name="toDate" required><br><br>

<button type="submit">Generate Report</button>

</form>

<a href="reports.jsp">Back</a>

</div>

</body>
</html>