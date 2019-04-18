package newswebsite.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import newswebsite.model.Account;
import newswebsite.service.AccountService;


/*
  @Controller
 */
@Controller
@SessionAttributes("")
public class AccountController {
	@Autowired
	private AccountService accountService;

	
	@GetMapping("/all-acounts")
	public String allaccounts(HttpServletRequest request){
		request.setAttribute("A", accountService.getAll());
		request.setAttribute("mode", "MODE_ACCOUNT");
		return "admin/admin";}
	
	@GetMapping("/new-account")
	public String newaccount(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEWACCOUNT");
		return "admin/admin";
	}
	
	@PostMapping("/save-account")
	public String saveaccount(@ModelAttribute Account acc, BindingResult bindingResult, HttpServletRequest request){
		accountService.save(acc);
		request.setAttribute("A", accountService.getAll());
		request.setAttribute("mode", "MODE_ACCOUNT");
		return "admin/admin";
	}
	
	@GetMapping("/update-account")
	public String updateaccount(@RequestParam int id,@ModelAttribute Account account, HttpServletRequest request){
		request.setAttribute("mode", "MODE_UPDATEACCOUNT");
		Account acc = accountService.getById(id);
		request.setAttribute("acc", acc);
		//request.setAttribute("accounts", accountService.getAll());	
	return "admin/admin";
	}
	
	@GetMapping("/delete-account")
	public String deleteTask(@RequestParam int id, HttpServletRequest request){
		accountService.delete(id);
		request.setAttribute("A", accountService.getAll());
		request.setAttribute("mode", "MODE_ACCOUNT");
		return "admin/admin";
	}
}