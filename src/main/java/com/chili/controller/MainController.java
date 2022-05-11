package com.chili.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chili.common.Common;
import com.chili.model.Cart;
import com.chili.model.Category;
import com.chili.model.Order;
import com.chili.model.Product;
import com.chili.model.User;
import com.chili.service.UserService;
import com.chili.service.CategoryService;
import com.chili.service.ProductService;

/**
 * Controller
 * 
 * @author Ton Ly
 * @version 0.1 2022.06
 *
 */
@Controller
public class MainController {

  Common common;

  @Autowired
  UserService userService;

  @Autowired
  CategoryService cateService;
  
  @Autowired
  ProductService proService;

  /**
   * process home page
   * 
   * @param model
   * @return home page
   */
  @RequestMapping("/")
  public String welcome(Model model) {
    // new Instant Common
    common = new Common();

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
    // get number of column of juice
    List<List<Product>> listLstFres = new ArrayList<List<Product>>();
    listLstFres = common.lstListPro(lstFreshFruit);

    // get Sugarcane Juice
    // new instance Category
    Category sugarJui = new Category();
    sugarJui = cateService.getCategoryById("CLI03VI", "vi");
    // get list of Sugarcane Juice
    List<Product> lstSugarJui = new ArrayList<Product>();
    lstSugarJui = sugarJui.getLstProduct();
    // get number of column of Sugarcane juice
    List<List<Product>> listLstSugJui = new ArrayList<List<Product>>();
    listLstSugJui = common.lstListPro(lstSugarJui);

    // get Yogurt
    // new instance Category
    Category yogurt = new Category();
    yogurt = cateService.getCategoryById("CLI04VI", "vi");
    // get list of Yogurt
    List<Product> lstYogurt = new ArrayList<Product>();
    lstYogurt = yogurt.getLstProduct();
    // get number of column of Yogurt
    List<List<Product>> listLstYogurt = new ArrayList<List<Product>>();
    listLstYogurt = common.lstListPro(lstYogurt);

    // get Tea
    // new instance Category
    Category tea = new Category();
    tea = cateService.getCategoryById("CLI05VI", "vi");
    // get list of Tea
    List<Product> lstTea = new ArrayList<Product>();
    lstTea = tea.getLstProduct();
    // get number of column of Tea
    List<List<Product>> listLstTea = new ArrayList<List<Product>>();
    listLstTea = common.lstListPro(lstTea);

    // get Coconut
    // new instance Category
    Category coconut = new Category();
    coconut = cateService.getCategoryById("CLI06VI", "vi");
    // get list of Coconut
    List<Product> lstCoconut = new ArrayList<Product>();
    lstCoconut = coconut.getLstProduct();
    // get number of column of Coconut
    List<List<Product>> listLstCoconut = new ArrayList<List<Product>>();
    listLstCoconut = common.lstListPro(lstCoconut);

    // get Bowl Of Fruit
    // new instance Category
    Category bow = new Category();
    bow = cateService.getCategoryById("CLI07VI", "vi");
    // get list of Bowl Of Fruit
    List<Product> lstBowl = new ArrayList<Product>();
    lstBowl = bow.getLstProduct();
    // get number of column of Bowl Of Fruit
    List<List<Product>> listLstBowl = new ArrayList<List<Product>>();
    listLstBowl = common.lstListPro(lstBowl);

    // get Bowl Of Soft Drink
    // new instance Category
    Category softDrink = new Category();
    softDrink = cateService.getCategoryById("CLI08VI", "vi");
    // get list of Soft Drink
    List<Product> lstSoftDrink = new ArrayList<Product>();
    lstSoftDrink = softDrink.getLstProduct();
    // get number of column of Soft Drink
    List<List<Product>> listLstSoftDrink = new ArrayList<List<Product>>();
    listLstSoftDrink = common.lstListPro(lstSoftDrink);

    model.addAttribute("lstCategory", lstCategory);
    model.addAttribute("lstJuice", lstJuice);
    // column of fresh fruit
    model.addAttribute("freFruCol", listLstFres.size());
    model.addAttribute("listLstFres", listLstFres);
    // column of listLstSugJui
    model.addAttribute("sugJuiCol", listLstSugJui.size());
    model.addAttribute("listLstSugJui", listLstSugJui);
    // column of Yogurt
    model.addAttribute("yogurtCol", listLstYogurt.size());
    model.addAttribute("listLstYogurt", listLstYogurt);
    // column of Tea
    model.addAttribute("teaCol", listLstTea.size());
    model.addAttribute("listLstTea", listLstTea);
    // column of Coconut
    model.addAttribute("coconutCol", listLstCoconut.size());
    model.addAttribute("listLstCoconut", listLstCoconut);
    // column of Bowl Of Fruit
    model.addAttribute("bowlCol", listLstBowl.size());
    model.addAttribute("listLstBowl", listLstBowl);
    // column of Soft Drink
    model.addAttribute("softDrCol", listLstSoftDrink.size());
    model.addAttribute("listLstSoftDrink", listLstSoftDrink);

    return "homePage";
  }

  @RequestMapping("/shoppingCart")
  public String shoppingCart(Model model,
          @RequestParam(value = "lstProductId") List<String> lstProductId,
          @RequestParam(value = "lstQuantity") List<Integer> lstQuantity) {

    Order order = new Order();
    UUID uuid = UUID.randomUUID();
    order.setOrderId("ord-" + uuid.toString());
    int priceOfOrder = 0;
    List<Cart> lstCart = new ArrayList<Cart>();
    for (int i = 0; i < lstProductId.size(); i++) {
        uuid = UUID.randomUUID();
        // new instance card
        Cart cart = new Cart();
        // new instance Product
        Product product = proService.getProductById(lstProductId.get(i), "vi");
        // set Quantity order
        product.setQuantity(lstQuantity.get(i));
        // set price
        int priceOfCard = lstQuantity.get(i) * product.getPrice();
        // set info for card
        cart.setCartId("cart-" + uuid.toString());
        cart.setProduct(product);
        cart.setPrice(priceOfCard);
        lstCart.add(cart);
        priceOfOrder = priceOfOrder + priceOfCard;
    }
    order.setLstCard(lstCart);
    order.setPrice(priceOfOrder);
    
    model.addAttribute("lstCart", lstCart);
    model.addAttribute("order", order);
    return "shoppingCart";
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