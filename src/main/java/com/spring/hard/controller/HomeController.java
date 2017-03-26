package com.spring.hard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.google.gson.JsonArray;
import com.spring.hard.manager.DataManager;
 
@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		String guestbookName = "default";
		model.addAttribute("guestbookName", guestbookName);
		
		//Get User Data
	//	userService(model); 

		DataManager manager = new DataManager();
		manager.loadData();
		JsonArray drinkList = manager.getData();
		model.addAttribute("drinkList", drinkList);
		model.addAttribute("drinkJson", drinkList.toString());
		model.addAttribute("message", "Spring 3 MVC Hello World");
		
		
		return "guestbook_new";
	}
 
	@SuppressWarnings("unused")
	private void userService(HttpServletRequest req) {
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		
		if (user != null) 
		{
			req.setAttribute("user", user);
		}
	}
}
