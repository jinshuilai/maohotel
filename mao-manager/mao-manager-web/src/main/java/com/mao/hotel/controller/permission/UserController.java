package com.mao.hotel.controller.permission;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mao.hotel.system.IUserService;
import com.mao.hotel.system.User;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService userService;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<User> list = userService.selectAll();
		model.addAttribute("users", list);
		return "main/user/list";
	}
	
	@RequestMapping("/add")
	public String add(){
		
		return "main/user/add";
	}
	
	@ResponseBody
	@RequestMapping(value = "/save",method = RequestMethod.POST, consumes = "application/json")
	public void save(@RequestBody User user,PrintWriter out){
		Gson gson = new Gson();
		if(user.getId() == null){
			user.setNumber("6");
			user.setDisable(false);
			userService.save(user);
		}else{
			user.setNumber("7");
			user.setDisable(false);
			userService.update(user);
		}
		String result = "ok";
		out.print(gson.toJson(result));
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id){
		userService.delete(id);
		return "redirect:list";
	}
	
	@RequestMapping("/edit")
	public String edit(Integer id,Model model){
		User user = userService.selectByPrimaryKey(id);
		model.addAttribute("user", user);
		return "main/user/edit";
	}
}
