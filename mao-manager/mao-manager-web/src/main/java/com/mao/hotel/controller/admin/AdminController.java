package com.mao.hotel.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mao.hotel.system.User;
import com.mao.hotel.system.impl.UserService;

@Controller
public class AdminController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/admin")
	public String admin(){
		
		
		return "index";
	}
	
	@RequestMapping("/home")
	public String home(Model model){
		User user = userService.selectByPrimaryKey(1);
		model.addAttribute("user", user);
		return "home";
	}
}
