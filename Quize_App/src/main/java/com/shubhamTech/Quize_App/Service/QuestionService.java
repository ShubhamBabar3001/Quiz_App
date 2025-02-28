package com.shubhamTech.Quize_App.Service;

import com.shubhamTech.Quize_App.Entity.Question;
import com.shubhamTech.Quize_App.Entity.QuizInfo;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import org.springframework.stereotype.Service;
import java.util.*;

@Service
public class QuestionService {
    @PersistenceContext
    private EntityManager entityManager;

    public List<Question[]> getQuestions(String tableName) {
        String sql = "SELECT id, question, option1, option2, option3, option4 FROM " + tableName;
        Query query = entityManager.createNativeQuery(sql);
        List<Question[]> resultList = query.getResultList();
        return resultList;
    }

    public List<String> getAllAnswers(String tableName) {
        String sql = "SELECT answer FROM " + tableName;
        Query query = entityManager.createNativeQuery(sql);
        List<String> resultList = query.getResultList();
        return resultList;
    }

    public List<QuizInfo[]> getQuizeInfo(){
        String sql = "SELECT quiz_id, quiz_name, quiz_time, table_name, quiz_level FROM quiz_info";
        Query query = entityManager.createNativeQuery(sql);
        List<QuizInfo[]> resultList = query.getResultList();
        return resultList;
    }
}
