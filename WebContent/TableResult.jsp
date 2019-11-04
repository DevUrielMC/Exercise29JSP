<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css"></link>
<link rel="stylesheet" href="css/styles.css"><link>

</head>
<body>
		<h2>Multiplication Table</h2>
		<%
		int table=Integer.parseInt(request.getParameter("txtTable"));
		int range=Integer.parseInt(request.getParameter("txtRange"));
		
		for (int j=0;j<=10;j++)
		 {
			 out.append("<p>");
			 out.append(String.format("%d X %d = %d",4,j,4*j));
			 out.append("</p>");
		 }
		
		%>




	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script src="js/script.js"></script>
</body>
</html>