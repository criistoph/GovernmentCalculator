package com.ite.government.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.InternetAddress;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.ite.government.model.Persona;
import com.ite.government.service.EmailService;
import com.ite.government.service.ExcelService;
import com.ite.government.util.MailVelocity;
import com.ite.government.util.ReadExcelCell;

@Service
public class ExcelServiceImpl implements ExcelService{
	private static final Logger log = Logger.getLogger(ExcelServiceImpl.class);
	@Autowired private EmailService emailService;
	@Override
	public String excel(MultipartFile excel) {
		List<Persona> detalles = new ArrayList<Persona>();
		String retorno = "OK";
		ReadExcelCell celdas = new ReadExcelCell();
		Workbook libroCuota = null;
		log.info("Lectura de Libro de Microsoft Excel 6.0/2013-2016 'XLSX' ");
		try {
			libroCuota = new XSSFWorkbook(excel.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		XSSFSheet hoja;
		XSSFRow fila = null;
		
		try {
			
			hoja = (XSSFSheet) libroCuota.getSheetAt(0);
			Integer filas = hoja.getLastRowNum();
			Integer iteradorFilas;
			
			for (iteradorFilas = 1; iteradorFilas <= filas; iteradorFilas++) {
				Persona detalle = new Persona();
				
				String nombre = celdas.CeldaExcelXLSX(hoja, fila, iteradorFilas, 0);
				String apellido = celdas.CeldaExcelXLSX(hoja, fila, iteradorFilas, 1);
				String correo = celdas.CeldaExcelXLSX(hoja, fila, iteradorFilas, 2);
				
				detalle.setNombre(nombre);
				detalle.setApellido(apellido);
				detalle.setCorreo(correo);
				
				log.info(detalle.getNombre());
				log.info(detalle.getApellido());
				log.info(detalle.getCorreo());
				
				if(detalle.getNombre().equals("") || detalle.getApellido().equals("") || detalle.getCorreo().equals("")) {
					retorno = "ERROR";	
				}
				if(detalle.getNombre().length() <= 1 || detalle.getNombre().length() >= 10) {
					retorno = "ERROR con la longitud de los datos";	
				}
				
				detalles.add(detalle);
			}
			} catch (Exception e) {
				log.error("Error al Leer excel XSLX", e);
			}
		if(retorno.equalsIgnoreCase("OK")) {
			log.info("SI entra");
			sendMailVelocity(detalles);
			//mailVelocity.sendMailVelocity(detalles);
		}else {
			log.info("No entra");
		}
		return retorno;
	}
	
	@Override
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
