<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.rachidj.utils.Mappings" %>

<html>
<head>
    <title>TodoList | Home</title>
</head>
<body>
<div>
    <c:url var="itemsLink" value="${Mappings.ITEMS}"/>
    <h2><a href="${itemsLink}">Items list</a> </h2>
</div>
</body>
</html>