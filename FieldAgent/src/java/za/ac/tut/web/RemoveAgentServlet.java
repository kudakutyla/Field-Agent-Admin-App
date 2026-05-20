/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class RemoveAgentServlet extends HttpServlet {

    @EJB
    private AgentFacadeLocal agentFacade;

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id= Long.valueOf(request.getParameter("id"));
        
        Agent agent=agentFacade.find(id);
        
        agentFacade.remove(agent);
        
       RequestDispatcher disp=request.getRequestDispatcher("remove_agent_outcome.jsp");
        disp.forward(request, response);
    }

}
