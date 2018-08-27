package com.ite.government.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.InternetAddress;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ite.government.model.Persona;
import com.ite.government.service.EmailService;

@Service
public class MailVelocity {
	
	@Autowired private EmailService emailService;
	private static final Logger log = Logger.getLogger(MailVelocity.class);
	
	public void sendMailVelocity(List <Persona> persona) {
		 log.info("Se ejecuta Job del metodo: sendMailVelocity");
		 
		 String LIST_VELOCITY = "CRIS";
		 String TEMPLATE_LOCATION = "velocity/email/templates/ejemplo.vsl";
		 String TIPO ="EJEMPLO VELOCITY";
		 try {
			InternetAddress[] to = InternetAddress.parse("criistoph@gmail.com");
			InternetAddress[] cc = InternetAddress.parse("criistoph@gmail.com");
	    	InternetAddress[] bcc = InternetAddress.parse("criistoph@gmail.com");
	    	
	    	
	    	if (persona.size()>0 || persona!=null) {
	    		Map model = new HashMap();
	    		model.put(LIST_VELOCITY, persona);
	    		model.put("tipo", TIPO);
	    		emailService.enviarMailVelocity(model, bcc, to, cc, TIPO, TEMPLATE_LOCATION);
	    		log.info("Se ha enviado correo sin problemas");
			}
	    	
		} catch (Exception e) {
			log.error("Error al envio de correo con velocity: " + e.getMessage());
		}	
	 }
}
