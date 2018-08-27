package com.ite.government.service;

import java.util.Map;
import javax.mail.internet.InternetAddress;
import org.springframework.mail.MailException;

public interface EmailService {
	void enviarMailVelocity(Map model,InternetAddress[] bcc,InternetAddress[] to,InternetAddress[] cc,String subject,String templateLocation)throws MailException;
}
