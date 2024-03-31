<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>experiance add</title>
    <script>
        function addRow() {
            var table = document.getElementById("experienceTable");
            var newRow = table.insertRow(table.rows.length);

            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            var cell3 = newRow.insertCell(2);
            var cell4 = newRow.insertCell(3);
            var cell5 = newRow.insertCell(4);

            cell1.innerHTML = '<input type="text" name="comapanyname[]">';
            cell2.innerHTML = '<input type="text" name="role[]">';
            cell3.innerHTML = '<input type="date" name="joiningdate[]">';
            cell4.innerHTML = '<input type="date" name="lastDate[]">';
        }

        function registerAll() {
            var tableData = [];
            var table = document.getElementById("experienceTable");

            for (var i = 1; i < table.rows.length; i++) {
                var row = table.rows[i];
                var rowData = {
                    companyname: row.cells[0].querySelector('input').value,
                    role: row.cells[1].querySelector('input').value,
                    joiningdate: row.cells[2].querySelector('input').value,
                    lastDate: row.cells[3].querySelector('input').value
                };

                tableData.push(rowData);
            }

            fetch('add1', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(tableData)
            })
            .then(response => response.json())
            .then(data => {
                window.location.href='/fetch';
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    </script>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Experience Registration</h1>
    <form action="javascript:void(0);" onsubmit="registerAll()">
        <table id="experienceTable">
            <tr>
                <th>Company Name</th>
                <th>Role</th>
                <th>Joining Date</th>
                <th>Last Date</th>
            </tr>
            <tr>
                <td><input type="text" name="comapanyname[]"></td>
                <td><input type="text" name="role[]"></td>
                <td><input type="date" name="joiningdate[]"></td>
                <td><input type="date" name="lastDate[]"></td>
            </tr>
        </table>
        <br>
        <button type="button" onclick="addRow()">Add Row</button>
        <br><br>
        <button type="submit">Register All</button>
    </form>
</body>
</html>