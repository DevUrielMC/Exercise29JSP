<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.exercise29jsp.model.Users" %>  
    
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
		<%Users miUsuario= new Users(); 
		miUsuario.setId(request.getParameter("txtId"));
		miUsuario.setName(request.getParameter("txtName"));
		%>
		<label for="txtTable">Table=</label>
		<input class=form-control" type="text" id="txtTable" name="txtTable" value="<%=miUsuario.getId() %>">
	</p>
	<p>
		<label for="txtRange">Range=</label>
		<input class=form-control" type="text" id="txtRange" name="txtRange" value="<%=miUsuario.getName() %>">
	</p>
	</p>
			<input class=" btn btn-success" type="submit" value="Show table alv">
		</p>
	</form>
	
	
	<form class="form-group" action="index.jsp" method="post">
		<p>
			
			<label for="txtId">ID </label>
			<input class=form-control" type="text" id="txtId" name="txtId" value="0">
		</p>
		<p>
			<label for="txtName">NAME </label>
			<input class=form-control" type="text" id="txtName" name="txtName" value="a">
		</p>
		</p>
			<input class=" btn btn-success" type="submit" value="Save data">
		</p>
	
	</form>
	
	
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script src="js/script.js"></script>
</body>
</html>