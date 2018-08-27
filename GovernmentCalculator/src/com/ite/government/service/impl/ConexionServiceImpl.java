package com.ite.government.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ite.government.dao.ConexionDao;
import com.ite.government.service.ConexionService;


@Service
public class ConexionServiceImpl implements ConexionService{
	
	
	private static final Logger log = Logger.getLogger(ConexionServiceImpl.class);
	@Autowired private ConexionDao conexionDao;
	
	
	
	@Override
	public Integer datos() {
		return conexionDao.datos();
	}
	
}
