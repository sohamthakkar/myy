<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<body>
	<center>
		<f:form action="insert" method="post" modelAttribute="RegisterVO">

			<table>

				<tbody>
					<tr>
						<td colspan="2">
							<h1 style="text-align: center;">
								<u><i>REGISTER</i></u>
							</h1>
						</td>
					</tr>

					<tr>
						<td>FIRST NAME:</td>
						<td><f:input path="firstName" /></td>
					</tr>

					<tr>
						<td>LAST NAME:</td>
						<td><f:input path="lastName" /> <f:hidden path="id" /> <f:hidden
								path="loginVO.id" /></td>
					</tr>


					<tr>
						<td>Date of Birth:</td>
						<td><f:input path="birthDate" /></td>
					</tr>

					<tr>
						<td>User Name:</td>
						<td><f:input path="userName" /></td>
					</tr>



					<tr>
						<td>Email Id:</td>
						<td><f:input path="loginVO.email" /></td>
					</tr>

					<tr>
						<td>PASSWORD:</td>
						<td><f:input path="loginVO.password" /></td>
					</tr>









					<tr style="height: 20px;">
						<td></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align: center;"><input
							type="submit" value="Submit"><input type="reset"
							value="Reset" style="margin-left: 25px;"></td>
					</tr>


				</tbody>
			</table>
			<br>

							<a href="Search">SEARCH</a>
				
		</f:form>
	</center>

</body>
</html>