package com.shubhamTech.Quize_App.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "quiz_info")

public class QuizInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long quiz_id;

    private String quiz_name;
    private int quiz_time;
    private String table_name;
    private String quiz_level;

}
