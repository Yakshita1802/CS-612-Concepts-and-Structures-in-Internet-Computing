<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
    // Get the current count from the session
    Integer count = (Integer) session.getAttribute("count");
    if (count == null) {
        count = 0;
    }
    // Increment the count
    count++;
    // Store the updated count in the session
    session.setAttribute("count", count);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Increment Integer</title>
</head>
<body>
    <h1>Integer: <%= count %></h1>
    <form method="post" action="increment.jsp">
        <input type="submit" value="Increment">
    </form>
</body>
</html>
