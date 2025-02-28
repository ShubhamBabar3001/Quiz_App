import React from "react";
import './QuizCard.css';
import { useNavigate } from "react-router-dom";

function QuizCard({ quiz }) {

    const navigate = useNavigate();

     // ✅ Function to navigate to Page3 with quiz details
     function goToQuiz() {
        navigate("/page3", {
            state: { 
                quiz_name: quiz.quiz_name, 
                quiz_time: quiz.quiz_time, 
                table_name: quiz.table_name 
            }
        });
    }

    if (!quiz) {
        return <p>Loading...</p>;
    }
    return (
        <div className="QuizCard">
            <p className="QuizTitle">{quiz.quiz_name}</p>
            <div className="Quizdescription">
                <p>Time: {quiz.quiz_time} min</p>
                <span className="badge">{quiz.quiz_level}</span>
            </div>
            <button className="QuizStartBtn" onClick={goToQuiz}> Start Quiz</button>
        </div>
    );
};
export default QuizCard