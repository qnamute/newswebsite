package newswebsite.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import newswebsite.dao.ICategoryRepository;
import newswebsite.model.Category;

@Service
@Transactional
public class CategoryService {
	public final ICategoryRepository categoryRepository;
	
	public CategoryService(ICategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

	public List<Category> getAll(){
		List<Category> categoryList = new ArrayList<>();
		for(Category category : categoryRepository.findAll()) {
			categoryList.add(category);
		}
		return categoryList;
	}
	
	public Category getById(int id) {
		return categoryRepository.findOne(id);
	}
	
	public void delete(int id) {
		categoryRepository.delete(id);
	}
	
	public void save(Category category) {
		categoryRepository.save(category);
	}
}
