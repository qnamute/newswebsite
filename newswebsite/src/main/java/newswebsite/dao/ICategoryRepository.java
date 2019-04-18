package newswebsite.dao;

import org.springframework.data.repository.CrudRepository;

import newswebsite.model.Category;

public interface ICategoryRepository extends CrudRepository<Category, Integer>{

}
