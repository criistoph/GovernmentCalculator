package com.ite.government.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ite.government.service.ExcelService;

@Controller
@RequestMapping(value="/Excel") 
public class ExcelController {
	private static final Logger log = Logger.getLogger(ExcelController.class);

	@Autowired private ExcelService excelService;

	@RequestMapping(value = "/leerExcel", method = RequestMethod.POST)
	public @ResponseBody String leerExcel(HttpServletRequest req) {
		log.info("Entrando al metodo de insertar excel");
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) req;
	    MultipartFile excel = multipartRequest.getFile("excel");
		
	    System.out.println(excel);
	    log.info("El archivo llego a controller " + excel);
	    return excelService.excel(excel);
	}
}
