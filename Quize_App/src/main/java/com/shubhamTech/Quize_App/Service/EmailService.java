package com.shubhamTech.Quize_App.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.JavaMailSender;

@Service
public class EmailService {
    @Autowired
    private JavaMailSender mailSender;

    // Send OTP email
    public void sendOtpEmail(String email, String otp) {
        System.out.println(email);
        System.out.println(otp);
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("Welcome to Quiz Application...! Your data is secure");
        message.setText("Your OTP code is: " + otp + "\n\nThis OTP is valid for 5 minutes.");
        mailSender.send(message);
        System.out.println("Mail Send");
    }

}
