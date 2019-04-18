package newswebsite.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import newswebsite.model.Category;
import newswebsite.service.CategoryService;

@Controller
public class CategoriesController {
	@Autowired
	private CategoryService categoryService;

	@GetMapping("/all-categories")
	public String allRoles(HttpServletRequest request){
		request.setAttribute("CA", categoryService.getAll());
		request.setAttribute("mode", "MODE_CATEGORY");
		return "admin/admin";
	}

	@GetMapping("/new-category")
	public String newRole(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEWCATEGORY");
		return "admin/admin";
	}
	
	@PostMapping("/save-category")
	public String saveCategory(@ModelAttribute Category categories, HttpServletRequest request){
		categoryService.save(categories);
		request.setAttribute("CA", categoryService.getAll());
		request.setAttribute("mode", "MODE_CATEGORY");
		return "admin/admin";
	}
	
	@GetMapping("/update-category")
	public String updateCategory(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("mode", "MODE_UPDATECATEGORY");
		Category cate = categoryService.getById(id);
		request.setAttribute("categoryupdate", cate);
		return "admin/admin";
	}

	@GetMapping("/delete-category")
	public String deleteCategory(@RequestParam int id, HttpServletRequest request){
		categoryService.delete(id);
		request.setAttribute("CA", categoryService.getAll());
		request.setAttribute("mode", "MODE_CATEGORY");
		return "admin/admin";
	}

}