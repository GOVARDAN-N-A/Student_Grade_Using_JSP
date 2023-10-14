<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student Grade Result</title>
</head>
<body>
    <c:if test="${not empty param.subject1 and not empty param.subject2 and not empty param.subject3 and not empty param.subject4 and not empty param.subject5}">
        <%-- Retrieve marks for each subject from the request --%>
        <c:set var="subject1" value="${param.subject1}" />
        <c:set var="subject2" value="${param.subject2}" />
        <c:set var="subject3" value="${param.subject3}" />
        <c:set var="subject4" value="${param.subject4}" />
        <c:set var="subject5" value="${param.subject5}" />

        <c:try>
            <%-- Parse marks as doubles --%>
            <c:set var="doubleSubject1" value="${Double.parseDouble(subject1)}" />
            <c:set var="doubleSubject2" value="${Double.parseDouble(subject2)}" />
            <c:set var="doubleSubject3" value="${Double.parseDouble(subject3)}" />
            <c:set var="doubleSubject4" value="${Double.parseDouble(subject4)}" />
            <c:set var="doubleSubject5" value="${Double.parseDouble(subject5)}" />

            <%-- Calculate average --%>
            <c:set var="average" value="${(doubleSubject1 + doubleSubject2 + doubleSubject3 + doubleSubject4 + doubleSubject5) / 5}" />

            <%-- Determine the grade based on the average --%>
            <c:set var="grade" value="<%= determineGrade(average) %>" />

            <%-- Display the result --%>
            <h3>Student Grade: ${grade}</h3>
        </c:try>
        <c:catch var="exception">
            <p>Invalid input. Please enter valid numeric marks for all subjects.</p>
        </c:catch>
    </c:if>

    <%-- Function to determine the grade based on the average --%>
    <c:function signature="String determineGrade(double average)">
        <c:choose>
            <c:when test="${average >= 90}">
                <c:out value="A" />
            </c:when>
            <c:when test="${average >= 80}">
                <c:out value="B" />
            </c:when>
            <c:when test="${average >= 70}">
                <c:out value="C" />
            </c:when>
            <c:when test="${average >= 60}">
                <c:out value="D" />
            </c:when>
            <c:otherwise>
                <c:out value="F" />
            </c:otherwise>
        </c:choose>
    </c:function>
</body>
</html>
