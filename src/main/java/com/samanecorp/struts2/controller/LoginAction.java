package com.samanecorp.struts2.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private String email;
	private String password;
	private Logger logger = LoggerFactory.getLogger(LoginAction.class);
	private HttpServletRequest request = ServletActionContext.getRequest();
	
	public String login() {
		logger.info("Email : {}", email);
		if(email.equals("test@samanecorp.com") && password.equals("passer")) {
			request.getSession().setAttribute("username", email);
			
			return "welcome";
		}
		return "login";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
