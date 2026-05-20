/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import com.sun.org.apache.bcel.internal.generic.Select;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entity.Agent;

/**
 *
 * @author student
 */
@Stateless
public class AgentFacade extends AbstractFacade<Agent> implements AgentFacadeLocal {

    @PersistenceContext(unitName = "FieldAgentPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AgentFacade() {
        super(Agent.class);
    }

    @Override
    public Long getAllAgents() {
        Query qry= em.createQuery("Select Count(s) From Agent s");
        Long qryy=(Long)qry.getSingleResult();
        return qryy;
    }
    
}
