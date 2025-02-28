package com.shubhamTech.Quize_App.Controller;

import com.shubhamTech.Quize_App.DTO.OtpRequest;
import com.shubhamTech.Quize_App.DTO.OtpVerificationRequest;
import com.shubhamTech.Quize_App.Service.EmailService;
import com.shubhamTech.Quize_App.Service.OtpService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/otp")
@CrossOrigin(origins = "http://localhost:3000") // Allow React frontend to access API
public class OtpController {

    @Autowired
    private OtpService otpService;

    @Autowired
    private EmailService emailService;

    // Endpoint to send OTP
    @PostMapping("/send")
    public ResponseEntity<String> sendOtp(@Valid @RequestBody OtpRequest request) {
        if(request!=null){
            request.getUserEmail();
        }
        String otp = otpService.generateOtp(request.getUserEmail());
        emailService.sendOtpEmail(request.getUserEmail(), otp);
        return ResponseEntity.ok("OTP sent successfully to " + request.getUserEmail());
    }

    // Endpoint to verify OTP
    @PostMapping("/verify")
    public ResponseEntity<String> verifyOtp(@Valid @RequestBody OtpVerificationRequest request) {

        boolean isValid = otpService.verifyOtp(request.getUserEmail(), request.getOtp());
        if (isValid) {
            return ResponseEntity.ok("OTP verified successfully!");
        }
        return ResponseEntity.badRequest().body("Invalid OTP. Please try again.");

    }
}