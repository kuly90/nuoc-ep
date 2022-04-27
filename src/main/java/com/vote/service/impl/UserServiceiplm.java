package com.vote.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vote.model.User;
import com.vote.repository.UserRepository;
import com.vote.service.UserService;

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
