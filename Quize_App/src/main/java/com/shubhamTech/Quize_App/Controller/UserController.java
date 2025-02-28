package com.shubhamTech.Quize_App.Controller;

import com.shubhamTech.Quize_App.Entity.Users;
import com.shubhamTech.Quize_App.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/quiz_api/user")
@CrossOrigin(origins = "http://localhost:3000")
public class UserController {
    @Autowired
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    @PostMapping("/login")
    public Users loginUser(@RequestBody Users user) {
        return userService.logIn(user);
    }

   @PostMapping("/signIn")
    public Users signIn(@RequestBody Users user){
       return userService.signIn(user);
   }


}
