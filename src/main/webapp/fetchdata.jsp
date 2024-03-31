<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Experience Data</title>
    <link rel="stylesheet" type="text/css" href="final.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Experience Data</h2>
    <table border="1">
        <tr>
            <th>Sr.no</th>
            <th>Company Name</th>
            <th>Role</th>
            <th>Joining Date</th>
            <th>Last Date</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>
        <c:forEach var="emp" items="${e_data}">
            <tr>
                <td>${emp.srno}</td>
                <td>${emp.companyname}</td>
                <td>${emp.role}</td>
                <td>${emp.joiningdate}</td>
                <td>${emp.lastDate}</td>
                <td><a href="<c:url value='/delete/${emp.srno}'/>">Delete</a></td>
                <td><a href="<c:url value='/${emp.srno}'/>">Update</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
