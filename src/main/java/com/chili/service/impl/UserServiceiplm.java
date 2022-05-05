package com.chili.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chili.model.User;
import com.chili.repository.UserRepository;
import com.chili.service.UserService;

@Service
public class UserServiceiplm implements UserService{
	
	@Autowired
	UserRepository userRepo;

	@Override
	public User getUser(User userLogin) {
		
		User user = userRepo.findByUserIdAndPassword(userLogin.getUserId(), userLogin.getPassword());
		
		return user;
	}
}
