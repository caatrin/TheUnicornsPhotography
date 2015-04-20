package ea.photography.domain;

import java.util.Date;

public class Comment {
    
    private Long commentId;
    private String comment;
    private Date date;
    private User user;

    public Comment() {
    }

    public Long getCommentId() {
        return commentId;
    }

//    public void setCommentId(Long commentId) {
//        this.commentId = commentId;
//    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    
}
