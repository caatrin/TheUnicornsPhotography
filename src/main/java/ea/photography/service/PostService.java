package ea.photography.service;

import ea.photography.dao.PostDao;
import ea.photography.domain.Post;
import java.util.List;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRES_NEW)
public class PostService {
    
    private PostDao postDao;

    public PostService() {
    }

    public void setPostDao(PostDao postDao) {
        this.postDao = postDao;
    }
    
    public void addNewPost(Post post){
        postDao.add(post);
    }
    
    public List<Post> getAllPost(){
        return postDao.getAll();
    }
    
}
