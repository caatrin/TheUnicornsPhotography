/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.service;

import ea.photography.dao.IComment;
import ea.photography.domain.Comment;
import ea.photography.domain.User;
import java.util.Calendar;
import java.util.List;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRES_NEW)
public class CommentService {
    
    private IComment commentDao;

    public void setCommentDao(IComment commentDao) {
        this.commentDao = commentDao;
    }
    
    public void createComment(Comment comment) {
        Calendar cal = Calendar.getInstance();
        comment.setCommentDate(cal.getTime());
        commentDao.createCommment(comment);
    }
    
    public List<Comment> getAll() {
        return commentDao.getAll();
    }
    
}
