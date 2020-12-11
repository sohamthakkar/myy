<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>
	<center>
		<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>



		<table width="50%">

			<tr>
				<th colspan="5"><h1><u><i>Data</i></u></h1></th>
			</tr>

			<tr>
				<th colspan="5" height="20px"></th>
			</tr>

			<tr>
				<th style="text-align: left;">No</th>
				<th style="text-align: left;">Name</th>
				<th style="text-align: left;">Date of Birth</th>
				<th style="text-align: left;">User Name</th>
				<th style="text-align: left;">Email</th>
				<th style="text-align: left;">Edit</th>
				<th style="text-align: left;">New</th>
				<th style="text-align: left;">Delete</th>
			</tr>

			<tr>
				<th colspan="5" height="20px"></th>
			</tr>

			<c:forEach items="${registerList}" var="i" varStatus="j">
				<tr>
					<td>${j.count}</td>
					<td>${i.firstName} ${i.lastName}</td>
					<td>${i.birthDate}</td>
					<td>${i.userName}</td>
					<td>${i.loginVO.email}</td>
					<td><a href="edit?id=${i.id}">Edit</a></td>
					<td><a href="/">New</a></td>
					<td><a href="delete?id=${i.id}">delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</center>
</body>
</html>