
package ea.photography.dao;

import ea.photography.domain.Comment;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.MANDATORY)
public class CommentDao implements IComment{
    
    private SessionFactory sf;

    @Transactional(propagation = Propagation.SUPPORTS)
    public void setSf(SessionFactory sf) {
        this.sf = sf;
    }
    
    @Override
    public void createCommment(Comment comment) {
        sf.getCurrentSession().persist(comment);
    }

    @Override
    public List<Comment> getAll() {
        return sf.getCurrentSession().createQuery("from Comment order by commentDate desc").list();
    }
    
    
    
}
