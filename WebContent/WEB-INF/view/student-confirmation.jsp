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

</body>

</html>