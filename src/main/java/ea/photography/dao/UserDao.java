/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.dao;

import ea.photography.domain.User;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.MANDATORY)

public class UserDao implements IUserDao {

    private SessionFactory sf;

    @Transactional(propagation = Propagation.SUPPORTS)
    public void setSessionFactory(SessionFactory sf) {
        this.sf = sf;
    }

    @Override
    public void createUser(User user) {
        sf.getCurrentSession().persist(user);
    }

    @Override
    public User getUserByEmail(String email) {
        Query query = sf.getCurrentSession().createQuery("from User u where u.email = :email");
        query.setParameter("email", email);
        User user = (User) query.uniqueResult();
        return user;
    }

}
