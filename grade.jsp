<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student Grade</title>
</head>
<body>
    <h2>Enter Marks for Five Subjects:</h2>
    <form action="gradeResult.jsp" method="post">
        Subject 1: <input type="text" name="subject1" /><br>
        Subject 2: <input type="text" name="subject2" /><br>
        Subject 3: <input type="text" name="subject3" /><br>
        Subject 4: <input type="text" name="subject4" /><br>
        Subject 5: <input type="text" name="subject5" /><br>
        <input type="submit" value="Submit" />
    </form>
</body>
</html>
