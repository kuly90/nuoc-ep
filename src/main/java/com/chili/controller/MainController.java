package com.chili.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chili.model.Category;
import com.chili.model.Product;
import com.chili.model.User;
import com.chili.service.UserService;
import com.chili.service.CategoryService;

/**
 * Controller
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
@Controller
public class MainController {

  @Autowired
  UserService userService;

  @Autowired
  CategoryService cateService;

  /**
   * process home page
   * @param model
   * @return home page
   */
  @RequestMapping("/")
  public String welcome(Model model) {
    // get All Category
    List<Category> lstCategory = cateService.getCategory("vi");

    // get juice
    // new instance Category
    Category juice = new Category();
    juice = cateService.getCategoryById("CLI01VI", "vi");
    // get list of juice
    List<Product> lstJuice = new ArrayList<Product>();
    lstJuice = juice.getLstProduct();

    // get fresh fruit
    // new instance Category
    Category freshFruit = new Category();
    freshFruit = cateService.getCategoryById("CLI02VI", "vi");
    // get list of juice
    List<Product> lstFreshFruit = new ArrayList<Product>();
    lstFreshFruit = freshFruit.getLstProduct();
    
    // column of fresh fruit
    int freFruCol = lstFreshFruit.size() / 4;
    int surplus = lstFreshFruit.size() % 4;
    if (surplus > 0) {
      freFruCol = freFruCol + 1;
    }
    // get list column
    List<List<Product>> listLstFres = new ArrayList<List<Product>>();
    // loop to get 4 item in a column
    for (int i = 0; i < freFruCol; i++) {
      List<Product> lstFre = new ArrayList<Product>();
      for (int j = 0; j < 4 && i*4 + j < lstFreshFruit.size(); j++) {
        lstFre.add(lstFreshFruit.get(i*4 + j));
      }
      listLstFres.add(lstFre);
    }

    model.addAttribute("lstCategory", lstCategory);
    model.addAttribute("lstJuice", lstJuice);
    // column of fresh fruit
    model.addAttribute("freFruCol", freFruCol);
    model.addAttribute("listLstFres", listLstFres);

    return "homePage";
  }
  /*
   * @RequestMapping("/login") public String login(Model
   * model, @ModelAttribute("userForm") User userForm) {
   * 
   * User user = userService.getUser(userForm);
   * 
   * if(user != null) { SimpleDateFormat formatter = new
   * SimpleDateFormat("yyyy-MM-dd"); Date date = new Date(); String today =
   * formatter.format(date); List<Vote> listVote =
   * voteService.getVote(userForm.getUserId(), today);
   * model.addAttribute("listVote", listVote); model.addAttribute("userId",
   * userForm.getUserId()); model.addAttribute("date", today); return "homePage";
   * } else { return "login"; }
   * 
   * }
   * 
   * @RequestMapping("/searchByDate") public String searchByDate(Model
   * model, @RequestParam(value="userId") String
   * userId, @RequestParam(value="date") String date) {
   * 
   * List<Vote> listVote = voteService.getVote(userId, date);
   * model.addAttribute("listVote", listVote); model.addAttribute("userId",
   * userId); model.addAttribute("date", date); return "homePage";
   * 
   * }
   */
   
}