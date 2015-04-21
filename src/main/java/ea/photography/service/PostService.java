/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.service;

import ea.photography.dao.PostDao;
import ea.photography.domain.Post;
import java.util.Calendar;
import java.util.List;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author caatrin
 */
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

    public Post getPostById(Long postId) {
        return postDao.get(postId);
    }

    public void editPost(Long postId, Post post) {
        Calendar cal = Calendar.getInstance();
        post.setPostDate(cal.getTime());
        postDao.update(postId, post);
    }

    public void deletePost(Long postId) {
        postDao.delete(postId);
    }
    
}
