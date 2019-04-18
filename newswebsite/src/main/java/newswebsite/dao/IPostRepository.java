package newswebsite.dao;

import org.springframework.data.repository.CrudRepository;

import newswebsite.model.Post;

public interface IPostRepository extends CrudRepository<Post, Integer>{

}
