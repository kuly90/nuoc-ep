package com.vote.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.vote.model.Vote;

public interface VoteRepository extends CrudRepository<Vote, String> {

	@Query(value = "select * from vote\n"
			+ " where USER_ID = ?1 AND DATE_VOTE = ?2 " , nativeQuery = true)
    List<Vote> listVote(String userId, String date);
}
