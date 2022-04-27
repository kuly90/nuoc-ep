package com.vote.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.vote.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, String> {

	User findByUserIdAndPassword(String userId, String pass);
	
}
