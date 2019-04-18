package newswebsite.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import newswebsite.service.PostService;

@RestController
public class HomeUserController {
	
	@Autowired
	private PostService postService; 
	
	@GetMapping("/home")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		request.setAttribute("mostpopular", postService.getAll());
		return "home";
	}
}
