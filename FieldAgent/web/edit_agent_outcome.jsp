<%-- 
    Document   : edit_agent_outcome
    Created on : 20 May 2026, 12:58:32 PM
    Author     : student
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Agent!</h1>
        <%
            Agent agent = (Agent) session.getAttribute("agent");
            String name = agent.getName();
            Long id = agent.getId();
            Integer age = agent.getAge();
            Character gender = agent.getGender();
            Date dob = agent.getDob();
            SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
            String d = dd.format(dob);
            String status = agent.getStatus();
            Date creation = agent.getCreationDate();
        %>
        <form action="EditServlet.do" method="POST">    
            <table border="1">
                <tr>
                    <td>Name</td>
                    <td><%=name%></td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td>
                        <%=id%>
                        <input type="hidden" name="id" value="<%=id%>" />
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="text" value="<%=age%>" name="age" /></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><%=gender%></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td><%=d%></td>
                </tr><tr>
                    <td>Status</td>
                    <td><%=status%></td>
                </tr>
                <tr>
                    <td>Creation Date</td>
                    <td><%=creation%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="EDIT"/></td>
                </tr>

            </table>
        </form>

    </body>
</html>
