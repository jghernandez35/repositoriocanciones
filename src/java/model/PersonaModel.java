/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Persona;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Acer_White
 */
public class PersonaModel {
    //CRUD
    public List<Persona> getAll(){
        List<Persona> lst = new ArrayList<Persona>();
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
        s.beginTransaction();
        lst = s.createCriteria(Persona.class).list();
        s.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            s.getTransaction().rollback();
        }
        return lst;
    }
    //Create
    public void  create(Persona p){
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
        s.beginTransaction();
        s.save(p);//aqui Guarda mediante Hibernate en la Base de Datos
        s.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            s.getTransaction().rollback();
        }
    }
    //Remover
    public void  remove(Persona p){
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
        s.beginTransaction();
        s.delete(p);//aqui Elimina mediante Hibernate en la Base de Datos
        s.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            s.getTransaction().rollback();
        }
    }
    //Update
    public void  update(Persona p){
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
        s.beginTransaction();
        s.update(p);//aqui Elimina mediante Hibernate en la Base de Datos
        s.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            s.getTransaction().rollback();
        }
    }       
    //Edit
    public void  edit(Persona p){
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
        s.beginTransaction();
        s.update(p);//aqui Edita similar a Actualizar mediante Hibernate en la Base de Datos
        s.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            s.getTransaction().rollback();
        }
    }       
    public Persona getPersona(Integer id){
        Persona p = new Persona();

        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
        s.beginTransaction();
        p = (Persona) s.get(Persona.class,id);
        s.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            s.getTransaction().rollback();
        }   
        return p;
    }
}
