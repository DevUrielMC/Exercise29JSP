<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>First JSP Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css"></link>
<link rel="stylesheet" href="css/styles.css"><link>

</head>
<body>
<h2>PRACTICAS JSP </h2>

	<%
	for (int j=0;j<=10;j++)
	 {
		 out.append("<p>");
		 out.append(String.format("%d X %d = %d",4,j,4*j));
		 out.append("</p>");
	 }
	%>
	
	<%! int i = 12; %>
	<p> 
		<%--esta linea imprime el valor de i --%>
		El valor de i es: <%=i %>
		
	</p>
	<form class="form-group" action="TableResult.jsp" method ="post">
	<p>
		<label for="txtTable">Table=</label>
		<input class=form-control" type="text" id="txtTable" name="txtTable">
	</p>
	<p>
		<label for="txtRange">Range=</label>
		<input class=form-control" type="text" id="txtRange" name="txtRange">
	</p>
	</p>
			<input class=" btn btn-success" type="submit" value="Show table alv">
		</p>
	</form>
	
	
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script src="js/script.js"></script>
</body>
</html>