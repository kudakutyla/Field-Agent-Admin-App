<%-- 
    Document   : search_agent_outcome
    Created on : 20 May 2026, 12:20:05 PM
    Author     : student
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Searched Agent Found!</h1>
        <%
            Agent agent = (Agent) request.getAttribute("agent");
            String name = agent.getName();
            Long id = agent.getId();
            Integer age = agent.getAge();
            Character gender = agent.getGender();
            Date dob = agent.getDob();
            SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
            String d = dd.format(dob);
            String status = agent.getStatus();
            Date creationDate = agent.getCreationDate();
        %>
        <p>
            Below are details of Agent with Id <%=id%>
        </p>
        <table border="1">
            <tr>
                <td>Name</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>ID</td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Age</td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%=gender%></td>
            </tr><tr>
                <td>Date of Birth</td>
                <td><%=d%></td>
            </tr><tr>
                <td>Marital Status</td>
                <td><%=status%></td>
            </tr><tr>
                <td>Creation Date</td>
                <td><%=creationDate%></td>
            </tr>



        </table>
        <ol>
            <li><a href="index.html">Menu</a></li>
        </ol>

    </body>
</html>
