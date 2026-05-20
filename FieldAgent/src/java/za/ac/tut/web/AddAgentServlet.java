/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.AgentFacadeLocal;
import za.ac.tut.model.entity.Agent;

/**
 *
 * @author student
 */
public class AddAgentServlet extends HttpServlet {

    @EJB
    private AgentFacadeLocal agentFacade;

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name= request.getParameter("name");
            Long id= Long.parseLong(request.getParameter("id"));
            Integer age= Integer.valueOf(request.getParameter("age"));
            Character gender=request.getParameter("gender").charAt(0);
            String dobStr= request.getParameter("dob");
            SimpleDateFormat dd= new SimpleDateFormat("yyyy-MM-dd");
            Date dob= dd.parse(dobStr);
            String status= request.getParameter("status");
            
            Agent agent= createAgent(name, id, age, gender, dob, status);
            agentFacade.create(agent);
            
            RequestDispatcher disp=request.getRequestDispatcher("add_agent_outcome.jsp");
            disp.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(AddAgentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private Agent createAgent(String name, Long id, Integer age, Character gender, Date dob, String status) {
        Agent agent= new Agent();
        agent.setName(name);
        agent.setId(id);
        agent.setAge(age);
        agent.setGender(gender);
        agent.setDob(dob);
        agent.setStatus(status);
        agent.setCreationDate(new Date());
        return agent;
    }

  
}
