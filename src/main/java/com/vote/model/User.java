package com.vote.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "USER_ID")
	private String userId;

	@Column(name = "NAME")
	private String name;

	@Column(name = "PASSWORD")
	private String password;
	
	@OneToMany(mappedBy = "user")
	 private List<Vote> lstVote;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Vote> getLstVote() {
		return lstVote;
	}

	public void setLstVote(List<Vote> lstVote) {
		this.lstVote = lstVote;
	}
	

}
