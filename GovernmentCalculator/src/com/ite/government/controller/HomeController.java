package com.ite.government.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ite.government.service.ConexionService;




@Controller
@RequestMapping(value="/") 
public class HomeController {
	private static final Logger log = Logger.getLogger(HomeController.class);
	@Autowired private ConexionService conexionService;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String init () {
		return "login";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home () {
		return "home";
	}
	
	@RequestMapping(value = "/aprobador", method = RequestMethod.GET)
	public String aprobador() {
		return "aprobador";
	}
	@RequestMapping(value = "/estatus", method = RequestMethod.GET)
	public String estatus() {
		return "estatus";
	}
	@RequestMapping(value = "/solicitante", method = RequestMethod.GET)
	public String solicitante() {
		return "solicitante";
	}
	
	
}
