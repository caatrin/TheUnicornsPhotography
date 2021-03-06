package ea.photography.dao;

import ea.photography.domain.Post;
import ea.photography.domain.User;
import java.util.Calendar;
import java.util.List;
import org.hibernate.Query;
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
        return sessionFactory.getCurrentSession().createQuery("from Post order by postDate desc").list();
    }

    @Override
    public void add(Post post) {
        Calendar cal = Calendar.getInstance();
        post.setPostDate(cal.getTime());
        sessionFactory.getCurrentSession().persist(post);
    }

    @Override
    public Post get(Long postId) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Post p where p.postId = :postId");
        query.setParameter("postId", postId);
        Post post = (Post) query.uniqueResult();
        return post;
    }

    @Override
    public void update(Long postId, Post post) {
        sessionFactory.getCurrentSession().update(post);
    }

    @Override
    public void delete(Long postId) {
        Post post = (Post) sessionFactory.getCurrentSession().load(Post.class, postId);
        sessionFactory.getCurrentSession().delete(post);
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    
}
