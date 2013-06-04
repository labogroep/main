package springapp.repository;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class Person
 */
@Stateless
@LocalBean
public class Person implements PersonRemote, PersonLocal {

    /**
     * Default constructor. 
     */
    public Person() {
        // TODO Auto-generated constructor stub
    }

}
