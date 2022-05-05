package com.chili.service;

import java.util.List;

import com.chili.model.Category;

/**
 * Category process
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
public interface CategoryService {

	/**
	 * Get Categories
	 * @param lang
	 * @return list of Category
	 */
  public List<Category> getCategory(String lang);

  /**
   * Get Category By ID
   * @param categoryId
   * @param lang
   * @return
   */
  public Category getCategoryById(String categoryId, String lang);

}
