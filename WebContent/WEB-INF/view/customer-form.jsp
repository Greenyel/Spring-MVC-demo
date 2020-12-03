<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
	<title>Customer Registration Form</title>
	
	<!-- this is CSS style for making an error look red color: -->
	<style>
		.error {color:red}
	</style>
</head>

<body>

<i>Fill out the form. Asterisk (*) means required. </i>

	<form:form action="processForm" modelAttribute="customer">
	
		First name: <form:input path="firstName" />
		
		<br><br>
		
		Last name(*): <form:input path="lastName" />
		<form:errors path="lastName" cssClass="error"/>
		
		<br><br>
		
		Free Passes: <form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error"/>
		
		<br><br>
		
		Postal Code: <form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error" />
		
		<br><br>
		
		<input type="submit" value="Submit" />
		
	</form:form>

</body>

</html>