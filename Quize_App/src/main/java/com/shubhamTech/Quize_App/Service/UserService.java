package com.shubhamTech.Quize_App.Service;

import com.shubhamTech.Quize_App.Entity.Users;
import com.shubhamTech.Quize_App.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public Users logIn(Users user) {
        // Fetch user from database
        Users existingUser = userRepository.findByUserEmail(user.getUserEmail());

        if (existingUser != null && existingUser.getUserPassword().equals(user.getUserPassword())) {
            return existingUser; // Successful login
        } else {
            return null; // Invalid login credentials
        }

    }


    // Sign In Service
    public Users signIn(Users newUser){
        if(newUser!=null && userRepository.findByUserEmail(newUser.getUserEmail())==null){
            System.out.println(newUser.getUserEmail());
            return userRepository.save(newUser);
        }
        return null;
    }
}
