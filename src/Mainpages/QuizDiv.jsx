import React, { useState, useEffect } from "react";
import axios from "axios";
import './QuizDiv.css';
import QuizCard from "../Card/QuizCard";
import user from '../Asset/user.png';
function QuizDiv() {
    const [QuestionInfo, setQuestionInfo] = useState([]);

    useEffect(() => {
        const fetchData = async () => {
            try {
                const response = await axios.get("http://localhost:8081/quiz_api/questions/quiz_info"); // Replace with actual API

                // Ensure response data is an array
                if (!Array.isArray(response.data)) {
                    console.error("Invalid API response format", response.data);
                    return;
                }

                // Convert array format to object format
                const formattedData = response.data.map((quiz) => ({
                    quiz_id: quiz[0],       // Use quiz_id instead of id
                    quiz_name: quiz[1],
                    quiz_time: quiz[2],
                    table_name: quiz[3],
                    quiz_level: quiz[4],
                }));

                setQuestionInfo(formattedData);
            } catch (error) {
                console.error("Axios fetch error:", error);
            }
        };

        fetchData();
        const interval = setInterval(fetchData, 3000);

        // Cleanup function to stop interval when component unmounts
        return () => clearInterval(interval);
    }, []);


    return (
        <div className="QuizeDiv">
            <div className="QuizDiv-1">
                <h2>My Quizzes</h2>
                <div className="Dashboard-1-left">
                    <p>shubhambabar551@gmail.com</p>
                    <div className="Profile-logo">
                        <img src={user} alt="" className="userprofileLogo" />
                    </div>
                </div>
            </div>
            <div className="QuizDiv-2">
                {QuestionInfo.length > 0 ? (
                    QuestionInfo.map((quiz) => (
                        <QuizCard key={quiz.quiz_id} quiz={quiz} />
                    ))
                ) : (
                    <p>Loading quizzes...</p>
                )}
            </div>
        </div>
    );
};
export default QuizDiv