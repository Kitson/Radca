package com.app.adviseJ;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.PagedList;
import org.springframework.social.facebook.api.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class HomeController {
	private Facebook facebook;

	@Inject
	public HomeController(Facebook facebook) {
		this.facebook = facebook;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String helloFacebook(Model model) {
		if (!facebook.isAuthorized()) {
			return "redirect:/connect/facebook";
		} else {
			model.addAttribute(facebook.userOperations().getUserProfile());
			PagedList<Post> homeFeed = facebook.feedOperations().getHomeFeed();
			model.addAttribute("feed", homeFeed);
		}
		return "welcome";
	}

	@RequestMapping(value = "authorized/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "authorized/index";
	}

	@RequestMapping(value = "authorized/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {

		return "authorized/about";
	}

	@RequestMapping(value = "authorized/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {

		return "authorized/contact";
	}

	@RequestMapping(value = "authorized/signin", method = RequestMethod.GET)
	public String signin(Locale locale, Model model) {

		return "authorized/signin";
	}
}
