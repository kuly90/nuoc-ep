package com.chili.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chili.model.Category;
import com.chili.repository.CategoryRepository;
import com.chili.service.CategoryService;

/**
 * Category process
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
@Service
public class CategoryServiceImpl implements CategoryService {

  /* declare cateRepo */
  @Autowired
  CategoryRepository cateRepo;

  /**
   * Get Category
   * @param lang
   * @return listCategory List
   */
  @Override
  public List<Category> getCategory(String lang) {

    // get list of category
    List<Category> listCategory = (List<Category>) cateRepo.listCategory(lang);

    return listCategory;

    }
  
  /**
   * Get Category BY ID
   * @param categoryId
   * @param lang
   * @return listCategory List
   */
  @Override
  public Category getCategoryById(String categoryId, String lang) {

    // get Category BY ID
    Category category = (Category) cateRepo.listCategoryById(categoryId, lang);

    return category;

    }
}