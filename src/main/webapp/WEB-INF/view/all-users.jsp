<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<h2>Users list</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>

        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="/update">
            <c:param name="userId" value="${emp.id}"/>

        </c:url>

        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="userId" value="${emp.id}"/>

        </c:url>
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.email}</td>

            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'"/>

                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'"/>
            </td>
        </tr>

    </c:forEach>

</table>
<br>
    <input type="button" value="Add"
           onclick="window.location.href = '/addNewUser'"/>

</body>
</html>