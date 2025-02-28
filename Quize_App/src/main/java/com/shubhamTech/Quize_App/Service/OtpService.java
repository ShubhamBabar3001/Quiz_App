package com.shubhamTech.Quize_App.Service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
@Service
public class OtpService {
    private final Map<String, String> otpStorage = new HashMap<>();
    private final Random random = new Random();

    // Generate a 4-digit OTP and store it temporarily
    public String generateOtp(String email) {
        System.out.println("inside otp generation");
        String otp = String.format("%06d", random.nextInt(9999));
        otpStorage.put(email, otp);
        return otp;
    }

    // Verify the OTP
    public boolean verifyOtp(String email, String otp) {
        if (otpStorage.containsKey(email) && otpStorage.get(email).equals(otp)) {
            otpStorage.remove(email); // Remove OTP after verification
            return true;
        }
        return false;
    }

}
