package ea.photography.domain;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Post {

    @Id
    @GeneratedValue
    private Long postId;
    private String title;
    private String description;
    private String picturename;
    @OneToMany
    @JoinColumn(name = "post_id")
    private List<Comment> comments;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User author;

    public Post() {
    }

    
    public Long getPostId() {
        return postId;
    }

//    public void setPostId(Long postId) {
//        this.postId = postId;
//    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicturename() {
        return picturename;
    }

    public void setPicturename(String picturename) {
        this.picturename = picturename;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }
    
    
}
