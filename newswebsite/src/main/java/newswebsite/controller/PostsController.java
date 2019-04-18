package newswebsite.controller;




import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import newswebsite.model.Post;
import newswebsite.service.PostService;

@Controller
public class PostsController {
	@Autowired
	private PostService postService;

	
	@GetMapping("/all-posts")
	public String allaccounts(HttpServletRequest request){
		request.setAttribute("P", postService.getAll());
		request.setAttribute("mode", "MODE_POST");
		return "admin/admin";}
	
	@GetMapping("/new-post")
	public String newRole(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEWPOST");
		return "admin/admin";
	}
	
	@PostMapping("/save-post")
	public String savePost(@ModelAttribute Post p, HttpServletRequest request){
		postService.save(p);
		request.setAttribute("P", postService.getAll());
		request.setAttribute("mode", "MODE_POST");
		return "admin/admin";
		}
	@GetMapping("/update-post")
	public String updateCategory(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("mode", "MODE_UPDATEPOST");
		Post post = postService.getById(id);
		request.setAttribute("postupdate", post);
		return "admin/admin";}
	
	@GetMapping("/delete-post")
	public String deleteTask(@RequestParam int id, HttpServletRequest request){
		postService.delete(id);
		request.setAttribute("P", postService.getAll());
		request.setAttribute("mode", "MODE_POST");
		return "admin/admin";}
	
}
