<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Result</title>

<style>
body{
margin:0;
font-family:Arial;
background:linear-gradient(to right,#1e3c72,#2a5298);
}

.box{
width:450px;
margin:120px auto;
background:white;
padding:30px;
text-align:center;
border-radius:15px;
box-shadow:0 0 15px gray;
}

h2{
color:green;
}

a{
display:inline-block;
padding:10px 20px;
background:#2a5298;
color:white;
text-decoration:none;
border-radius:8px;
margin-top:20px;
}
</style>

</head>
<body>

<div class="box">

<h2><%= request.getAttribute("msg") %></h2>

<a href="index.jsp">Home</a>

</div>

</body>
</html>