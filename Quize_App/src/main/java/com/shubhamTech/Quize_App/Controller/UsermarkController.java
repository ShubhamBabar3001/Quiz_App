package com.shubhamTech.Quize_App.Controller;

import com.shubhamTech.Quize_App.Entity.UserMark;
import com.shubhamTech.Quize_App.Service.UserMarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user_quiz_history")
@CrossOrigin(origins = "http://localhost:3000")
public class UsermarkController {
    private final UserMarkService userMarkService;


    @Autowired
    public UsermarkController(UserMarkService userMarkService) {
        this.userMarkService = userMarkService;
    }

    // Save Mark
    @PostMapping("/save")
    public boolean saveMarkData(@RequestBody UserMark userMark) {
        try {
            return userMarkService.setQuizData(userMark);

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error: " + e.getMessage()).hasBody();
        }
    }

    // Get All Data
    @GetMapping("/getMark/{user_id}")
    public List<UserMark> getAllMarkData(@PathVariable int user_id) {
        return userMarkService.getQuizData(user_id);
    }
}
