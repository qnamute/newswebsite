package newswebsite.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import newswebsite.model.Account;
import newswebsite.model.Post;
import newswebsite.service.CategoryService;
import newswebsite.service.PostService;

@Controller
public class AdminController {
	
	@Autowired
	private PostService postService; 
	
	@Autowired
	private CategoryService categoryService;
	
	public Account acclog;

	public void setAcclog(Account acc) {
		acclog = acc;
	}

	@GetMapping("/admin")
	public String admin(HttpServletRequest request, Account acc) {
		if(acc!=null) {
			request.setAttribute("adminmode", "AMODE_HOME");
			return "admin/admin";
		}
		return "login/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.setAttribute("viewer", "MODE_GUESS");
		request.setAttribute("mode", "MODE_HOME");
		MainController mc = new MainController();
		mc.setAcclog(null);
		request.setAttribute("categoryList", categoryService.getAll());
		List<Post> temp = postService.getNewPost();
		request.setAttribute("newPostList", temp);
		return "home";
	}
}
