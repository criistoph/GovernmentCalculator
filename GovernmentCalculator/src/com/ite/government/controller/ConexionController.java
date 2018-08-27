package com.ite.government.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ite.government.service.ConexionService;

@Controller
@RequestMapping(value="/ejemplo") 
public class ConexionController {
	private static final Logger log = Logger.getLogger(HomeController.class);
	@Autowired private ConexionService conexionService;
	
	@RequestMapping(value = "/conexion", method = RequestMethod.POST)	
	public @ResponseBody Integer conexion() {
		return conexionService.datos();	
	}
}
