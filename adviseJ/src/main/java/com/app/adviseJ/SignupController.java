package com.app.adviseJ;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.hibernate.exception.ConstraintViolationException;
import org.hibernate.validator.HibernateValidator;

import com.app.adviseJ.users.model.*;
import com.app.adviseJ.users.dao.UserDao;
import com.app.adviseJ.users.dao.UserDaoImpl;

@Controller
@RequestMapping(value = "/main/signup")
@Transactional
public class SignupController {

	private User user;
	private UserRole userRole;
	@Autowired
	private UserDao userDao;

	@RequestMapping(method = RequestMethod.GET)
	public String signupform() {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();

		if (!(auth instanceof AnonymousAuthenticationToken)) {
			return "forward:home";
		}
		return "main/signup";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String signup(@RequestParam("login") String login,
			@RequestParam("firstName") String firstname,
			@RequestParam("lastName") String lastname,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("confirmPassword") String confirmpassword,
			@RequestParam("enabled") boolean enabled, Model model) {
		List<String> errors = new ArrayList<String>();
		String hashpw = BCrypt.hashpw(password, BCrypt.gensalt());
		user = new User(login, password, enabled, email, confirmpassword,
				firstname, lastname);
		ValidatorFactory validatorFactory = Validation
				.buildDefaultValidatorFactory();
		Validator validator = validatorFactory.getValidator();
		Set<ConstraintViolation<User>> validationErrors = validator
				.validate(user);
		if (!validationErrors.isEmpty()) {
			for (ConstraintViolation<User> error : validationErrors) {
				errors.add(error.getMessage());
			}
			model.addAttribute("errors", errors);
			return "/main/signup";
		}
		System.out.println(password);
		user.setPassword(hashpw);
		try {
			userDao.insertUser(user);
		} catch (ConstraintViolationException e) {
			if (e.getErrorCode() != 1062) {
				errors.add(e.getMessage());
			} else
				errors.add("Podana nazwa użytkownika jest już w użyciu.");
			model.addAttribute("errors", errors);
			return "/main/signup";
		}
		userRole = new UserRole(user,"ROLE_USER");
		userDao.insertRole(userRole);
		return "/main/index";
	}
}
