/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.AgentFacadeLocal;

/**
 *
 * @author student
 */
public class TotAgentsServlet extends HttpServlet {

    @EJB
    private AgentFacadeLocal agentFacade;

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer totAgents= agentFacade.count();
        
        request.setAttribute("totAgents", totAgents);
        RequestDispatcher disp=request.getRequestDispatcher("count_agent_outcome.jsp");
        disp.forward(request, response);
    }

   
}
