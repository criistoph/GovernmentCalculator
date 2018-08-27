package com.ite.government.dao.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.ite.government.dao.ExcelDao;

@Repository
public class ExcelDaoImpl implements ExcelDao{

	private static final Logger log = Logger.getLogger(ExcelDaoImpl.class);
	@Autowired private JdbcTemplate jdbcTemplate;
	
	@Override
	public void excel() {
		log.info("Llego a dao impl");
		// TODO Auto-generated method stub
		
	}

}
