package com.kh.portfolio.common.mail;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Inject
	private JavaMailSender mailSender;
	@Inject
	private SimpleMailMessage preConfiguredMessage;

	@Async
	public void sendMail(String to, String subject, String body) {
		MimeMessage message = mailSender.createMimeMessage();

		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setSubject(subject);
			//messageHelper.setBcc(bcc); //참조추가
			messageHelper.setTo(to);
			messageHelper.setFrom("sang105kr@gmail.com", "관리자");
			messageHelper.setText(body, true);
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Async
	public void sendPreConfiguredMail(String message) {
		SimpleMailMessage mailMessage = new SimpleMailMessage(preConfiguredMessage);
		mailMessage.setText(message);
		mailSender.send(mailMessage);
	}
}
