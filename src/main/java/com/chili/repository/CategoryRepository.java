package com.chili.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chili.model.Category;

/**
 * Category process
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
public interface CategoryRepository extends CrudRepository<Category, String> {

  /**
   * Get categories
   * @param lang
   * @return listCategory
   */
  @Query(value = "select CATEGORY_ID,\n"
               + " CATEGORY_NAME,\n"
               + " LANGUAGE\n"
               + " from category\n"
               + " where LANGUAGE = ?1\n"
               + " order by CATEGORY_ID"
               , nativeQuery = true)
  List<Category> listCategory(String lang);
  
  /**
   * Get category By ID
   * @param categoryId
   * @param lang
   * @return Category
   */
  @Query(value = "select CATEGORY_ID,\n"
          + " CATEGORY_NAME,\n"
          + " LANGUAGE\n"
          + " from category\n"
          + " where CATEGORY_ID = ?1\n"
          + " and LANGUAGE = ?2\n"
          + " order by CATEGORY_ID"
          , nativeQuery = true)
Category listCategoryById(String categoryId, String lang);
}
