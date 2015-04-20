package ea.photography.dao;

import ea.photography.domain.Post;
import java.util.List;

public interface IPostDao {
    
    public abstract List<Post> getAll();

	public abstract void add(Post post);

	public abstract Post get(Long postId);

	public abstract void update(Long postId, Post post);

	public abstract void delete(Long postId);
    
}
