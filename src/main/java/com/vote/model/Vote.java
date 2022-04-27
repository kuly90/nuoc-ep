package com.vote.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "vote")
public class Vote implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "VOTE_ID")
	private String voteId;

	@Column(name = "VOTE_NAME")
	private String voteName;
	
	@Column(name = "TOTAL_VOTE")
	private Integer totalVote;
	
	@Column(name = "DATE_VOTE")
	private String dateVote;
	
	@ManyToOne
	@JoinColumn(name = "USER_ID")
	  private User user;

	public String getVoteId() {
		return voteId;
	}

	public void setVoteId(String voteId) {
		this.voteId = voteId;
	}

	public String getVoteName() {
		return voteName;
	}

	public void setVoteName(String voteName) {
		this.voteName = voteName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getTotalVote() {
		return totalVote;
	}

	public void setTotalVote(Integer totalVote) {
		this.totalVote = totalVote;
	}

	public String getDateVote() {
		return dateVote;
	}

	public void setDateVote(String dateVote) {
		this.dateVote = dateVote;
	}
	
}
