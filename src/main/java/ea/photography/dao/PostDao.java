/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.dao;

import ea.photography.domain.Post;
import ea.photography.domain.User;
import java.util.Calendar;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * use photography;
    INSERT INTO user VALUES(1, "123", "admin@gmail.com","Maharishi","Yogi Bear", "123", "ADMIN");
    commit;
* 
 * @author caatrin
 */
@Transactional
public class PostDao implements IPostDao {

    private SessionFactory sessionFactory;
    
    @Override
    public List<Post> getAll() {
        return sessionFactory.getCurrentSession().createQuery("from Post order by postDate").list();
    }

    @Override
    public void add(Post post) {
        //sessionFactory.getCurrentSession().
        User user = new User();
        Calendar cal = Calendar.getInstance();
        post.setPostDate(cal.getTime());
        user.setUserId(1L);
        post.setAuthor(user);
        sessionFactory.getCurrentSession().persist(post);
    }

    @Override
    public Post get(Long postId) {
        throw new UnsupportedOperationException("Not supported yet."); 
        //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Long postId, Post post) {
        throw new UnsupportedOperationException("Not supported yet."); 
        //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Long postId) {
        throw new UnsupportedOperationException("Not supported yet."); 
        //To change body of generated methods, choose Tools | Templates.
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    
}
