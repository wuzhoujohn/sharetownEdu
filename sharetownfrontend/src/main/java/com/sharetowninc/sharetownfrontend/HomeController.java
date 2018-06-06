package com.sharetowninc.sharetownfrontend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	
	@RequestMapping(value ={ "/", "/home", "/index"}, method = RequestMethod.GET)
	public ModelAndView home() {
		//System.out.println("we are in home handlerMethod");
		ModelAndView model = new ModelAndView("home");
		model.addObject("title", "home page");
		model.addObject("userClickHome", true);
		//passing the list of categories
		//model.addObject("categories", categoryDAO.list());
		return model;
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView about() {
		ModelAndView model = new ModelAndView("home");
		model.addObject("title", "about page");
		model.addObject("userClickAbout", true);
		return model;
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		ModelAndView model = new ModelAndView("home");
		model.addObject("title", "contact page");
		model.addObject("userClickContact", true);
		return model;
	}

}
