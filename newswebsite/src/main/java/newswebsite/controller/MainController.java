package newswebsite.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import newswebsite.model.Account;
import newswebsite.model.Post;
import newswebsite.service.AccountService;
import newswebsite.service.CategoryService;
import newswebsite.service.PostService;

@Controller
public class MainController {
	
	@Autowired
	private PostService postService; 
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private AccountService accountService;
	
	public void setAcclog(Account acclog) {
		this.acclog = acclog;
	}

	public Account acclog;
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		if(acclog!=null) {
			request.setAttribute("viewer", "MODE_USER");
			request.setAttribute("username", acclog.getuser_name());	
		}
		else {
			request.setAttribute("viewer", "MODE_GUESS");
		}
		request.setAttribute("categoryList", categoryService.getAll());
		List<Post> temp = postService.getNewPost();
		request.setAttribute("newPostList", temp);
		return "home";
	}	
	
	@GetMapping("/post")
	public String singlePost(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("mode", "MODE_POST");
		request.setAttribute("categoryList", categoryService.getAll());
		request.setAttribute("post", postService.getById(id));
		return "home";
	}
	
	@GetMapping("/category")
	public String category(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("mode", "MODE_CATEGORY");
		if(acclog!=null) {
			request.setAttribute("viewer", "MODE_USER");
			request.setAttribute("username", acclog.getuser_name());	
		}
		else {
			request.setAttribute("viewer", "MODE_GUESS");
		}
		request.setAttribute("categoryList", categoryService.getAll());
		request.setAttribute("newCategoryPostList", postService.getNewPostByCategory(id));
		request.setAttribute("categorypost", postService.getPostByCategory(id));
		return "home";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@PostMapping("/checklogin")
	public String checkAccount(@ModelAttribute("accout") Account account, HttpServletRequest request) {
		boolean check;
		String username = account.getuser_name();
		String pass = account.getPass();
		Account acc = accountService.getByUserName(username, pass);
		home(request);
		if(acc!=null) {
			check = true;
			acclog = acc;
		}	
		else {
			check = false;
		}
		if(check) {
			int role = acc.getRoles().getID();
			if(role==1) {
				//request.setAttribute("viewer", "MODE_ADMIN");
				request.setAttribute("adminname", acc.getuser_name());
				AdminController ac = new AdminController();
				//request.setAttribute("notify", "Login success !");
				return ac.admin(request, acclog);
			}
			if(role==2) {
				request.setAttribute("viewer", "MODE_USER");
				request.setAttribute("username", acc.getuser_name());				
				//request.setAttribute("notify", "Login success !");
				return "home";
			}
		}
		else {
			request.setAttribute("viewer", "MODE_GUESS");
			//request.setAttribute("notify", "Login failed, check your username and password again !");
		}
		return "login/login";
	}
}
