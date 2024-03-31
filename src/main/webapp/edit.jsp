<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Experience</title>
     <link rel="stylesheet" type="text/css" href="final.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <c:set var="ob" value="${emp_data}" />
    <form action="/edit/${ob.srno}" method="post">
        <input type="hidden" name="srno" value="${ob.srno}" />
        Company Name: <input type="text" name="companyname" value="${ob.companyname}" />
        <br><br>
        Role: <input type="text" name="role" value="${ob.role}" />
        <br><br>
        Joining Date: <input type="date" name="joiningdate" value="${ob.joiningdate}" />
        <br><br>
        Last Date: <input type="date" name="lastDate" value="${ob.lastDate}" />
        <br><br>
        <!-- New Update Button -->
        <button type="submit">Update</button>
    </form>
</body>
</html>
