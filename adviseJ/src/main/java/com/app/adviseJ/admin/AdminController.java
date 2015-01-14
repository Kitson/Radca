package com.app.adviseJ.admin;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.adviseJ.message.dao.MessageDao;
import com.app.adviseJ.message.dao.MessageDaoImpl;
import com.app.adviseJ.message.model.Message;
import com.app.adviseJ.users.dao.UserDao;
import com.app.adviseJ.users.model.User;
import com.app.adviseJ.users.model.UserRole;

@Controller
@RequestMapping(value = "/admin/")
public class AdminController {
	@Autowired
	private MessageDao messageDao;
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView model = new ModelAndView("admin/main");
		return model;

	}

	@RequestMapping(value = "messages", method = RequestMethod.GET)
	public ModelAndView getMessage() {
		ModelAndView model = new ModelAndView("admin/messages");
		List<Message> messageList = messageDao.getMessages();
		model.addObject("messageList", messageList);
		return model;

	}

	@RequestMapping(value = "users", method = RequestMethod.GET)
	public ModelAndView editUsers() {
		ModelAndView model = new ModelAndView("admin/user_edit");
		List<User> userList = userDao.getUsers();
		for (Iterator<User> iterator = userList.iterator(); iterator.hasNext();) {
			User user = iterator.next();
			Set<UserRole> userRoles = userDao.getRole(user);
			user.setUserRole(userRoles);
		}
		model.addObject("userList", userList);
		return model;

	}

	@RequestMapping(value = "users/{username}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable String username) {
		ModelAndView model = new ModelAndView("admin/user_edit_form");
		User user = userDao.findByUserName(username);
		model.addObject("user", user);
		return model;
	}

	@RequestMapping(value = "users/{username}", method = RequestMethod.POST)
	public ModelAndView updateUser(@PathVariable String username,
			@RequestParam("firstName") String firstname,
			@RequestParam("lastName") String lastname,
			@RequestParam("email") String email, User user) {
		ModelAndView model = new ModelAndView("admin/user_edit_form");
		user = userDao.findByUserName(username);
		if (user != null) {
			user.setName(firstname);
			user.setSurname(lastname);
			user.setEmail(email);
			userDao.updateUser(user);
		}
		model.addObject("user", user);
		model.addObject("success", "Udało się edytować dane użytkownika.");
		return model;
	}

	@RequestMapping(value = "settings", method = RequestMethod.GET)
	public ModelAndView setSettings() {
		ModelAndView model = new ModelAndView("admin/settings");
		return model;

	}

	@RequestMapping(value = "article", method = RequestMethod.GET)
	public ModelAndView addArticle() {
		ModelAndView model = new ModelAndView("admin/add_article");
		return model;

	}

	@RequestMapping(value = "article", method = RequestMethod.POST)
	public ModelAndView addArticle_form(@RequestParam("title") String title,
			@RequestParam("article_text") String text,
			@RequestParam("category") String category) {
		ModelAndView model = new ModelAndView("admin/add_article");
		
		return model;

	}
}
