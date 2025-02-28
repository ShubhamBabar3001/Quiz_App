package com.shubhamTech.Quize_App.Controller;

import com.shubhamTech.Quize_App.Entity.Question;
import com.shubhamTech.Quize_App.Entity.QuizInfo;
import com.shubhamTech.Quize_App.Service.QuestionService;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/quiz_api/questions")
@CrossOrigin(origins = "http://localhost:3000")
public class QuestionController {

    private final QuestionService questionService;

    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping("/{tableName}")
    public List<Question[]> getQuestions(@PathVariable String tableName) {
        return questionService.getQuestions(tableName);
    }

    @GetMapping("/{tableName}/answer")
    public List<String> getAnswer(@PathVariable String tableName) {
        return questionService.getAllAnswers(tableName);
    }

    @GetMapping("/quiz_info")
    public List<QuizInfo[]> getQuizData(){
        return questionService.getQuizeInfo();
    }

}
