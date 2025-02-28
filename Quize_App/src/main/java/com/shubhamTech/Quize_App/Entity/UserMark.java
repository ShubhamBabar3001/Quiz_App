package com.shubhamTech.Quize_App.Entity;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "user_marks")
public class UserMark {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_id", nullable = false)
    private int userId;

    @Column(name = "quiz_name", nullable = false)
    private String quizName;

    @Column(name = "quiz_mark", nullable = false)
    private int quizMark;

    @Column(name = "quiz_date", nullable = false)
    private String quizDate;

    public UserMark() {
        this.quizDate = LocalDate.now().toString();
    }

    public UserMark(int userId, String quizName, int quizMark) {
        this.userId = userId;
        this.quizName = quizName;
        this.quizMark = quizMark;
        this.quizDate = LocalDate.now().toString();
    }

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getQuizName() {
        return quizName;
    }

    public void setQuizName(String quizName) {
        this.quizName = quizName;
    }

    public int getQuizMark() {
        return quizMark;
    }

    public void setQuizMark(int quizMark) {
        this.quizMark = quizMark;
    }

    public String getQuizDate() {
        return quizDate;
    }

    public void setQuizDate() {
        this.quizDate = LocalDate.now().toString();
    }
}
