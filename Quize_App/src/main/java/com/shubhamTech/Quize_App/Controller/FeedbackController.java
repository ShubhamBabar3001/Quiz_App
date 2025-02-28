package com.shubhamTech.Quize_App.Controller;

import com.shubhamTech.Quize_App.Entity.UserFeedback;
import com.shubhamTech.Quize_App.Repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/feedback")
@CrossOrigin
public class FeedbackController {

    @Autowired
    private final FeedbackRepository feedbackRepository;

    // Constructor-based dependency injection
    public FeedbackController(FeedbackRepository feedbackRepository) {
        this.feedbackRepository = feedbackRepository;
    }

    @PostMapping("/save")
    public UserFeedback saveFeedback(@RequestBody UserFeedback feedback) {
        System.out.println("User id: "+feedback.getUserId());
        System.out.println("User Feedback: "+feedback.getFeedback());
        return feedbackRepository.save(feedback);

    }
}
