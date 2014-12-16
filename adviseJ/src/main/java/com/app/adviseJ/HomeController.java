package com.app.adviseJ;

import java.util.Locale;

import javax.inject.Inject;

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
	public String welcome(Model model) {
		return "welcome";
	}
	@RequestMapping(value = "/403",method = RequestMethod.GET)
	public String accessDenied(Model model) {
		return "403";
	}
	@RequestMapping(value = "/admin/403",method = RequestMethod.GET)
	public String accessDenied1(Model model) {
		return "403";
	}
	@RequestMapping(value = "main/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "main/index";
	}

	@RequestMapping(value = "main/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {

		return "main/about";
	}

	@RequestMapping(value = "main/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {

		return "main/contact";
	}

	@RequestMapping(value = "main/signin", method = RequestMethod.GET)
	public String signin(Locale locale, Model model) {

		return "main/signin";
	}
	
	@RequestMapping(value = "main/signup", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {

		return "main/signup";
	}
	@RequestMapping(value = "main/sidebar-left", method = RequestMethod.GET)
	public String sidebarleft(Locale locale, Model model) {

		return "main/sidebar-left";
	}
	@RequestMapping(value = "main/sidebar-right", method = RequestMethod.GET)
	public String sidebarright(Locale locale, Model model) {

		return "main/sidebar-right";
	}
	@RequestMapping(value = "main/page_terms", method = RequestMethod.GET)
	public String page_terms(Locale locale,Model model)
	{
		return"main/page_terms";
	}
}
