package com.samanecorp.struts2.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;
import com.samanecorp.struts2.dto.UserDto;

public class AdminAction extends ActionSupport {

	private Logger logger = LoggerFactory.getLogger(AdminAction.class);
	private String email;
	List<UserDto> usersList = new ArrayList<UserDto>();
	
	public String admin() {
		
		usersList.add(new UserDto("Bamba", "bamba@samanecorp.com", "asser"));
		usersList.add(new UserDto("Nael", "bamba@samanecorp.com", "asser"));
		usersList.add(new UserDto("Awa", "bamba@samanecorp.com", "asser"));
		usersList.add(new UserDto("Dior", "bamba@samanecorp.com", "asser"));
		
		return "admin";
	}
	
	public String edit() {
		logger.info("Email pour l'edition : {}", email);
		return "edit";
	}

	public String delete() {
		logger.info("Email pour la suppression : {}", email);
		return "delete";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<UserDto> getUsersList() {
		return usersList;
	}

	public void setUsersList(List<UserDto> usersList) {
		this.usersList = usersList;
	}
	
	
}
