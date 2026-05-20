<%-- 
    Document   : count_agent_outcome
    Created on : 20 May 2026, 2:36:40 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Count agent Outcome!</h1>
        <%
             Integer totAgents= (Integer)request.getAttribute("totAgents");
        %>
        <p>
            The total number of Agents is <%=totAgents%>
        </p>
        <ol>
            <li><a href="index.html">Menu</a></li>
        </ol>
    </body>
</html>
