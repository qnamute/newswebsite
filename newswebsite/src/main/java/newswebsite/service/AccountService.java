package newswebsite.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import newswebsite.dao.IAccountRepository;
import newswebsite.model.Account;

@Service
@Transactional
public class AccountService {
	public final IAccountRepository accountRepository;	
	
	public AccountService(IAccountRepository accountRepository) {
		this.accountRepository = accountRepository;
	}
	
	public List<Account> getAll(){
		List<Account> accountList = new ArrayList<>();
		for(Account account : accountRepository.findAll()) {
			accountList.add(account);
		}
		return accountList;
	}
	
	public Account getById(int id) {
		return accountRepository.findOne(id);
	}
	
	public Account getByUserName(String username, String pass) {
		Account acc = null;
		List<Account> list = getAll();
		for (Account account : list) {
			if((account.getuser_name().equals(username))&&(account.getPass().equals(pass))) {
				acc = account;
			}
		}
		return acc;
	}
	
	public void save(Account account) {
		accountRepository.save(account);
	}
	
	public void delete(int id) {
		accountRepository.delete(id);
	}
}
