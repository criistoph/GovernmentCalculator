package com.ite.government.service.impl;


import java.util.Map;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;
import com.ite.government.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private VelocityEngine velocityEngine;

	@SuppressWarnings("rawtypes")

	@Override
	public void enviarMailVelocity(Map model, InternetAddress[] bcc, InternetAddress[] to, InternetAddress[] cc,
			String subject, String templateLocation) throws MailException {
		MimeMessagePreparator msj = mimeMSGVelocity(model, bcc, to, cc, subject, templateLocation, null, null, null);
		this.mailSender.send(msj);
	}

	public MimeMessagePreparator mimeMSGVelocity(final Map model, final InternetAddress[] bcc,
			final InternetAddress[] to, final InternetAddress[] cc, final String subject, final String templateLocation,
			final Integer priority, final String attachmentFilename, final byte[] byteArray) {

		MimeMessagePreparator preparator = new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mm) throws Exception {
				MimeMessageHelper message;
				if (attachmentFilename != null && byteArray != null) {
					message = new MimeMessageHelper(mm, true);
				} else {
					message = new MimeMessageHelper(mm);
				}
				message.setTo(to);
				message.setBcc(bcc);
				message.setCc(cc);
				message.setSubject(subject);
				if (priority != null) {
					message.setPriority(priority);
				}
				if (attachmentFilename != null && byteArray != null) {
					message.addAttachment(attachmentFilename, new ByteArrayResource(byteArray));
				}
				message.setFrom("cristoph.ramirez@itesoluciones.com"); // could be parameterized...
				String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, templateLocation, "utf-8",
						model);
				message.setText(text, true);
			}
		};
		return preparator;
	}

}
