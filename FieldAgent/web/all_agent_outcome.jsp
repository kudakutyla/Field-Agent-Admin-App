<%-- 
    Document   : all_agent_outcome
    Created on : 20 May 2026, 12:38:29 PM
    Author     : student
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>All Agents!</h1>
        <% 
            List<Agent> agent=(List<Agent>)request.getAttribute("agent");

        %>
        <p>
            Here are Details of All Agents
        </p>
        <table border="1">
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>ID</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Date of Birth</th>
                <th>Marital Status</th>
                <th>Creation name</th>
            </tr>
            <%
                for (int i = 0; i < agent.size(); i++) {
                     Agent agents= agent.get(i);
   

        String name = agents.getName();

        Long id = agents.getId();

        Integer age = agents.getAge();

        Character gender = agents.getGender();

        Date dob = agents.getDob();

        SimpleDateFormat dd =
                new SimpleDateFormat("yyyy-MM-dd");

        String d = "";

        if(dob != null){
            d = dd.format(dob);
        }

        String status = agents.getStatus();

        Date creation = agents.getCreationDate();
%>
            
            %>
            <tr>
                <td><%=i+1%></td>
                <td><%=name%></td>
                <td><%=id%></td>
                <td><%=age%></td>
                <td><%=gender%></td>
                <td><%=d%></td>
                <td><%=status%></td>
                <td><%=creation%></td>
            </tr>
            <%
                }
            %>
        </table>
        <ol>
            <li><a href="index.html">Menu</a></li>
        </ol>
    </body>
</html>
