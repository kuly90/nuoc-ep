package com.vote.service;

import java.util.List;

import com.vote.model.Vote;

public interface VoteService {

	public List<Vote> getVote(String userId, String date);

}
