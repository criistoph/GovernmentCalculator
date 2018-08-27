package com.ite.government.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.ite.government.model.Persona;

public interface ExcelService {
	String excel(MultipartFile excel);
	void sendMailVelocity(List <Persona> persona);
}
