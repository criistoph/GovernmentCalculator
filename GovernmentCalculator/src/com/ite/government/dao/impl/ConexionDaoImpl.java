package com.ite.government.dao.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ite.government.dao.ConexionDao;
@Repository
public class ConexionDaoImpl implements ConexionDao{

	private static final Logger log = Logger.getLogger(ConexionDaoImpl.class);
	@Autowired private JdbcTemplate jdbcTemplate;

	@Override
	public Integer datos() {
		log.info("Entrando al metodo conexion");
		StringBuffer sql = new StringBuffer();
	
		sql.append("select ID_OTC_VA05 from OTC_VA05 where ID_OTC_VA05 ='656743'");
		Integer entero = 0;
		entero = jdbcTemplate.queryForInt(sql.toString());
		
		if(entero != 0) {
			log.info(entero + " Esta bien");
		}
	    return entero;
	}

}
