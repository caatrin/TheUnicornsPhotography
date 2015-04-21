
package ea.photography.dao;

import ea.photography.domain.Comment;
import java.util.List;


public interface IComment {
    public void createCommment(Comment comment);
    public List<Comment> getAll();
    
}
