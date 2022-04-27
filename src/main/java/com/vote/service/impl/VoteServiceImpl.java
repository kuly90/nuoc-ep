package com.vote.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vote.model.Vote;
import com.vote.repository.VoteRepository;
import com.vote.service.VoteService;

@Service
public class VoteServiceImpl implements VoteService {
	
	@Autowired
	VoteRepository voteRepo;

	@Override
	public List<Vote> getVote(String userId, String date) {
		
		 List<Vote> listVote = (List<Vote>) voteRepo.listVote(userId, date);
		
		return listVote;
		
	}
}
