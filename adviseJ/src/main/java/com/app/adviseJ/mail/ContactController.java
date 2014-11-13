package com.app.adviseJ.mail;

import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/main/contact")
public class ContactController {
	@Inject
	private JavaMailSender mailSender;

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	@RequestMapping(method = RequestMethod.POST)
	public void sendMail(@RequestParam("Name") final String name,
			@RequestParam("Email") final String email,
			@RequestParam("Phone") final String phone,@RequestParam("Text") final String text) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				mimeMessage.setRecipient(Message.RecipientType.TO,
						new InternetAddress("paykitson@gmail.com"));
				mimeMessage
						.setFrom(new InternetAddress(email));
				mimeMessage.setSubject(name);
				mimeMessage.setText(text+"\nNumer telefonu kontaktowego: "+phone);
			}
		};
		try {
			this.mailSender.send(preparator);
		} catch (MailException ex) {
			System.err.println(ex.getMessage());
		}
	}
}
