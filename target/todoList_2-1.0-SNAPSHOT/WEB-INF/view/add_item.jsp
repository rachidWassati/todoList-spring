<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="org.rachidj.utils.AttributeNames" %>
<%--<%@ page import="org.rachidj.utils.Mapping" %>--%>

<html>
<head>
    <title>TodoList | Items</title>
</head>
<body>
<div>
    <%--@elvariable id="${AttributeNames.TODO_ITEM}" type="org.rachidj.utils"--%>
    <form:form method="post" modelAttribute="${AttributeNames.TODO_ITEM}">
        <table>
            <tr>
                <td><label>ID</label></td>
                <td><form:input path="id" disabled="true"/></td>
            </tr>
            <tr>
                <td><label>Title</label></td>
                <td><form:input path="title"/></td>
            </tr>
            <tr>
                <td><label>Details</label></td>
                <td><form:input path="details"/></td>
            </tr>
            <tr>
                <td><label>Deadline</label></td>
                <td><form:input path="deadLine"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>