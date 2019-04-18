package newswebsite.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import newswebsite.dao.IPostRepository;
import newswebsite.model.Post;

@Service
@Transactional
public class PostService {
	public final IPostRepository postRepository;
	
	public PostService(IPostRepository postRepository) {
		this.postRepository = postRepository;
	} 
	
	public List<Post> getAll(){
		List<Post> postList = new ArrayList<>();
		for(Post post : postRepository.findAll()) {
			postList.add(post);
		}
		return postList;
	}
	
	public List<Post> getNewPost(){
		List<Post> postList = new ArrayList<>();
		List<Post> temp = new ArrayList<>();
		for(Post post : postRepository.findAll()) {
			temp.add(post);
		}
		if(temp.size()>=5) {
			for(int i = temp.size() - 5; i < temp.size(); i++ ) {
				postList.add(temp.get(i));
			}
		}
		else {
			postList = temp;
		}
		return postList;
	}
	
	public Post getById(int id) {
		return postRepository.findOne(id);
	}
	
	public List<Post> getPostByCategory(int id){
		List<Post> postList = new ArrayList<>();
		for(Post post : postRepository.findAll()) {
			if(post.getCategory_id()==id) {
				postList.add(post);
			}
		}
		return postList;
	}
	
	public List<Post> getNewPostByCategory(int id){
		List<Post> postList = new ArrayList<>();
		List<Post> temp = new ArrayList<>();
		for(Post post : postRepository.findAll()) {
			if(post.getCategory_id()==id) {
				temp.add(post);
			}
		}
		if(temp.size()>=5) {
			for(int i = temp.size() - 5; i < temp.size(); i++ ) {
				postList.add(temp.get(i));
			}
		}
		else {
			postList = temp;
		}
		return postList;
	}
	public void save(Post p){
		postRepository.save(p);
	}
	
	public void delete(int id){
		postRepository.delete(id);;
	}
}
