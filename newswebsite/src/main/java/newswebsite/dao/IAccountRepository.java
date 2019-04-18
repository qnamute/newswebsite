package newswebsite.dao;

import org.springframework.data.repository.CrudRepository;

import newswebsite.model.Account;

public interface IAccountRepository extends CrudRepository<Account, Integer>{

}
