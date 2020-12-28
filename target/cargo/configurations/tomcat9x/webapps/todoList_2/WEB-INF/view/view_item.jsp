<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="org.rachidj.utils.AttributeNames" %>
<%@ page import="org.rachidj.utils.Mappings" %>

<html>
<head>
    <title>TodoList | Items</title>
</head>
<body>
<div>
    <c:url var="editItem" value="${Mappings.ADD_ITEM}">
        <c:param name="id" value="${todoItem.id}"/>
    </c:url>
    <p><a href="${editItem}">Edit this item</a> </p>
    <table>
        <tr>
            <td><label>ID</label></td>
            <td><c:out value="${todoItem.id}"/></td>
        </tr>
        <tr>
            <td><label>Title</label></td>
            <td><c:out value="${todoItem.title}"/></td>
        </tr>
        <tr>
            <td><label>Details</label></td>
            <td><c:out value="${todoItem.details}"/></td>
        </tr>
        <tr>
            <td><label>Deadline</label></td>
            <td><c:out value="${todoItem.deadLine}"/></td>
        </tr>
    </table>
    <c:url var="itemsList" value="${Mappings.ITEMS}"/>
    <p><a href="${itemsList}">Items List</a> </p>
</div>
</body>
</html>