<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.rachidj.utils.Mappings" %>

<html>
<head>
    <title>TodoList | Items</title>
</head>
<body>
<div>
    <div>
        <c:url var="addItem" value="${Mappings.ADD_ITEM}"/>
        <h5><a href="${addItem}">Add an item</a></h5>
    </div>
    <div>
        <table border="1">
            <tr>
                <th> Title </th>
                <th> Deadline </th>
                <th> Show </th>
                <th> Edit </th>
                <th> Delete </th>
            </tr>
            <c:forEach var="item" items="${todoData.items}">
                <c:url var="deleteItemById" value="${Mappings.DELETE_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>

                <c:url var="editItemById" value="${Mappings.ADD_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>

                <c:url var="showItem" value="${Mappings.VIEW_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>

                <tr>
                    <td><c:out value="${item.title}"/></td>
                    <td><c:out value="${item.deadLine}"/></td>
                    <td><a href="${showItem}">Show</a></td>
                    <td><a href="${editItemById}">Edit</a></td>
                    <td><a href="${deleteItemById}">Delete</a></td>

                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>