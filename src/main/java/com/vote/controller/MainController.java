package com.vote.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vote.model.User;
import com.vote.model.Vote;
import com.vote.service.UserService;
import com.vote.service.VoteService;

@Controller
public class MainController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	VoteService voteService;
    
    @RequestMapping("/")
    public String welcome() {

        return "homePage";
    }
    
    @RequestMapping("/login")
    public String login(Model model,  @ModelAttribute("userForm") User userForm) {
        
    	User user = userService.getUser(userForm);
    	
    	if(user != null) {
    		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
    	    Date date = new Date();  
    	    String today = formatter.format(date);
    		List<Vote> listVote = voteService.getVote(userForm.getUserId(), today);
    		model.addAttribute("listVote", listVote);
    		model.addAttribute("userId", userForm.getUserId());
    		model.addAttribute("date", today);
    		return "homePage";
    	} else {
    		 return "login";
    	}
    	
    }
    
    @RequestMapping("/searchByDate")
    public String searchByDate(Model model, @RequestParam(value="userId") String userId, @RequestParam(value="date") String date) {
        
		List<Vote> listVote = voteService.getVote(userId, date);
		model.addAttribute("listVote", listVote);
		model.addAttribute("userId", userId);
		model.addAttribute("date", date);
		return "homePage";
 
    }
   
}