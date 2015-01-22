package com.app.adviseJ.admin;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.adviseJ.article.dao.ArticleDao;
import com.app.adviseJ.article.model.Article;
import com.app.adviseJ.message.dao.MessageDao;
import com.app.adviseJ.message.model.Message;
import com.app.adviseJ.users.dao.UserDao;
import com.app.adviseJ.users.model.User;
import com.app.adviseJ.users.model.UserRole;

@Controller
@RequestMapping(value = "/admin/")
public class AdminController {
	@Autowired
	private ArticleDao articleDao;
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
			UserRole userRole = userDao.getRole(user);
			Set<UserRole> userRoles = new HashSet<UserRole>();
			userRoles.add(userRole);
			user.setUserRole(userRoles);
		}
		model.addObject("userList", userList);
		return model;

	}

	@RequestMapping(value = "users/{username}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable String username) {
		ModelAndView model = new ModelAndView("admin/user_edit_form");
		User user = userDao.findByUserName(username);
		String roles = "";
		UserRole userRoles = userDao.getRole(user);
		roles = userRoles.getRole();
		model.addObject("user", user);
		System.out.println(roles);
		model.addObject("roles", roles);
		return model;
	}

	@RequestMapping(value = "users/{username}", method = RequestMethod.POST)
	public ModelAndView updateUser(@PathVariable String username,
			@RequestParam("firstName") String firstname,
			@RequestParam("lastName") String lastname,
			@RequestParam("email") String email,
			@RequestParam("role") String role) {
		ModelAndView model = new ModelAndView("admin/user_edit_form");
		List<String> errors = new ArrayList<String>();
		User userCopy = new User();
		User user = new User();
		String roles_ = "";
		user = userCopy = userDao.findByUserName(username);
		UserRole roles = userDao.getRole(user);
		Set <UserRole> userRoles = new HashSet<UserRole>();
		userRoles.add(roles);
		System.err.println("Role: " + role + "imie: " + user.getUsername());
		if (user != null) {
			if (role.equals("Administrator")) {
				roles.setRole("ROLE_ADMIN");
				System.err.println("Zmieniono na admina");
			}
			if (role.equals("Radca Prawny")) {
				roles.setRole("ROLE_SOLICITOR");
				System.err.println("Zmieniono na admina");
			}
			if (role.equals("Uzytkownik")) {
				roles.setRole("ROLE_USER");
				System.err.println("Zmieniono na usera");
			}
			if (role.equals("Zablokowany Uzytkownik")) {
				roles.setRole("ROLE_USER_BANNED");
				System.err.println("Zmieniono na zbanowanego usera");
			}
			user.setName(firstname);
			user.setSurname(lastname);
			user.setEmail(email);
			user.setUserRole(userRoles);
			ValidatorFactory validatorFactory = Validation
					.buildDefaultValidatorFactory();
			Validator validator = validatorFactory.getValidator();
			Set<ConstraintViolation<User>> validationErrors = validator
					.validate(user);
			if (!validationErrors.isEmpty()) {
				for (ConstraintViolation<User> error : validationErrors) {
					errors.add(error.getMessage());
				}
				model.addObject("errors", errors);
				model.addObject("user", userCopy);
				return model;
			}
			userDao.updateUser(user);
			System.err.println(roles.getRole());
			userDao.updateRole(roles);
			roles_ += roles.getRole();

			System.out.println(roles_);
			model.addObject("user", user);
			model.addObject("roles", roles_);
			model.addObject("success", "Udało się edytować dane użytkownika.");
		}
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
		List<String> errors = new ArrayList<String>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		Article article = new Article(title, auth.getName(), text, null);
		ValidatorFactory validatorFactory = Validation
				.buildDefaultValidatorFactory();
		Validator validator = validatorFactory.getValidator();
		Set<ConstraintViolation<Article>> validationErrors = validator
				.validate(article);
		if (!validationErrors.isEmpty()) {
			for (ConstraintViolation<Article> error : validationErrors) {
				errors.add(error.getMessage());
			}
			model.addObject("errors", errors);
			return model;
		}
		articleDao.insertArticle(article);
		model.addObject("success",
				"Dodanie artykułu zakończyło się powodzeniem");
		return model;
	}
}
