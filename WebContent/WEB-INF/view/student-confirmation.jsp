<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE HTML>

<html>

<head>

	<title>Student Confirmation</title>

</head>

<body>

	The student is confirm ${student.firstName} ${student.lastName}

<br><br>

Country: ${student.country} <!--at this part, spring will call Student.getCountry() method -->

<br><br>

Favorite Language: ${student.favoriteLanguage}

<br><br>

Familiar with Operating Systems: 

<ul>
	<c:forEach var="temp" items="${student.operatingSystems}">

		<li> ${temp} </li>

	</c:forEach>
</ul>

<br><br>

</body>

</html>